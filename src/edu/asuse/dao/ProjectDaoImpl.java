package edu.asuse.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import edu.asuse.model.Project;
import edu.asuse.model.ProjectDetails;

@Component
public class ProjectDaoImpl implements ProjectDao {

	@Autowired
	private JdbcTemplate userJdbcTemplate;

	// queries
	private static final String GET_PROJECT_DETAILS = "select p.name, description, created_by, use_case_template, policy_name, status, "
			+ "assigned_to, role  from projects p, assigned a, user u where p.name=a.name and a.assigned_to=u.email and p.name"
			+ " in (select name from projects where created_by=? union select name from assigned where assigned_to=?) order by created_time desc;";
	private static final String ADD_PROJECT = "insert into projects(name, description, created_by, use_case_template, policy_name) values(?,?,?,?,?);";
	private static final String GET_COLLABORATORS = "select email, role from user;";
	private static final String ADD_COLLABORATORS = "insert into assigned values(?,?);";
	private static final String SET_STATUS_PROJECT = "update projects SET status='closed' WHERE name=?;";
	private static final String SET_STATUS_USECASE= "update use_case_details SET status='closed' where project_name =?;";
	

	@Override
	public List<ProjectDetails> getProjectDetails(String email) {

		List<Map<String, Object>> rows = userJdbcTemplate.queryForList(GET_PROJECT_DETAILS,
				new Object[] { email, email });
		Map<String, ProjectDetails> map = new LinkedHashMap<String, ProjectDetails>();
		for (Map row : rows) {
			String proj_name = row.get("name").toString();
			String role = row.get("role").toString();
			String assignee = row.get("assigned_to").toString();
			ProjectDetails curr;
			if (map.containsKey(proj_name)) {
				curr = (ProjectDetails) map.get(proj_name);
			} else {
				curr = new ProjectDetails();
				curr.setProject(new Project());
				curr.getProject().setName(proj_name);
				curr.getProject().setDescription(row.get("description").toString());
				curr.getProject().setCreated_by(row.get("created_by").toString());
				curr.getProject().setUse_case_template(row.get("use_case_template").toString());
				curr.getProject().setPolicy_name(row.get("policy_name").toString());
				curr.getProject().setStatus(row.get("status").toString());
				curr.setDevMgrs(new ArrayList<String>());
				curr.setSolnMgrs(new ArrayList<String>());
				curr.setArchitects(new ArrayList<String>());
				curr.setQa(new ArrayList<String>());
			}
			if ("development-manager".equals(role))
				curr.getDevMgrs().add(assignee);
			else if ("solution-manager".equals(role))
				curr.getSolnMgrs().add(assignee);
			else if ("architect".equals(role))
				curr.getArchitects().add(assignee);
			else if ("qa".equals(role))
				curr.getQa().add(assignee);
			map.put(proj_name, curr);
		}
		return new ArrayList<ProjectDetails>(map.values());
	}

	@Override
	public boolean addProject(Project project) {
		userJdbcTemplate.update(ADD_PROJECT, new Object[] { project.getName(), project.getDescription(),
				project.getCreated_by(), project.getUse_case_template(), project.getPolicy_name() });
		return true;
	}

	@Override
	public Map<String, List<String>> getCollaborators() {
		List<Map<String, Object>> rows = userJdbcTemplate.queryForList(GET_COLLABORATORS);
		Map<String, List<String>> collaborators = new HashMap<String, List<String>>();
		for (Map row : rows) {
			String role = row.get("role").toString();
			String person = row.get("email").toString();
			List<String> list;
			if (collaborators.containsKey(role))
				list = collaborators.get(role);
			else
				list = new ArrayList<String>();
			list.add(person);
			collaborators.put(role, list);
		}
		return collaborators;
	}

	@Override
	public void addCollaborators(String name, String email) {
		userJdbcTemplate.update(ADD_COLLABORATORS, new Object[] { name, email });
	}
	@Override
	@Transactional("cdtTransactionManager")
	public void closeProject(String name){
		userJdbcTemplate.update(SET_STATUS_USECASE, new Object[] {name});
		userJdbcTemplate.update(SET_STATUS_PROJECT, new Object[] {name});		
	}
}
