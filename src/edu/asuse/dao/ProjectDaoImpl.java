package edu.asuse.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import edu.asuse.model.Project;
import edu.asuse.model.ProjectDetails;


@Component
public class ProjectDaoImpl implements ProjectDao {

	@Autowired
	private JdbcTemplate userJdbcTemplate;

	// queries
	private static final String GET_PROJECT_DETAILS = "select p.name, description, created_by, use_case_template, policy_name,"
			+ " assigned_to, role  from projects p, assigned a, user u where p.name=a.name and a.assigned_to=u.email and p.name"
			+ " in (select name from projects where created_by=? union select name from assigned where assigned_to=?);";
	
	private static final String ADD_PROJECT = "insert into projects(name, description, created_by, use_case_template, policy_name) values(?,?,?,?,?);";

	@Override
	public List<ProjectDetails> getProjectDetails(String email) {

		/* return  userJdbcTemplate.query(GET_PROJECT_DETAILS,
				 new Object[] {email, email}, new ProjectDetailsMapper());*/		 
		
		List<Map<String, Object>> rows = userJdbcTemplate.queryForList(GET_PROJECT_DETAILS,	 new Object[] {email, email});		
		Map<String, ProjectDetails> map = new HashMap<String, ProjectDetails>();
		for(Map row:rows){
			String proj_name = row.get("name").toString();
			System.out.println(proj_name);
			String role = row.get("role").toString();
			String assignee = row.get("assigned_to").toString();
			ProjectDetails curr ;
			if(map.containsKey(proj_name)){
				curr = (ProjectDetails) map.get(proj_name);
			}else{
				curr = new ProjectDetails();
				curr.setProject(new Project());
				curr.getProject().setName(proj_name);
				curr.getProject().setDescription(row.get("description").toString());
				curr.getProject().setCreated_by(row.get("created_by").toString());
				curr.getProject().setUse_case_template(row.get("use_case_template").toString());
				curr.getProject().setPolicy_name(row.get("policy_name").toString());
				curr.setDevMgrs(new ArrayList<String>());
				curr.setSolnMgrs(new ArrayList<String>());
				curr.setArchitects(new ArrayList<String>());
				curr.setQa(new ArrayList<String>());
			}
			if("development-manager".equals(role)) curr.getDevMgrs().add(assignee);
			else if("solution-manager".equals(role)) curr.getSolnMgrs().add(assignee);
			else if("architect".equals(role)) curr.getArchitects().add(assignee);
			else if("qa".equals(role)) curr.getQa().add(assignee);
			map.put(proj_name, curr);
		}
		return new ArrayList<ProjectDetails>(map.values());		
	}

	@Override
	public boolean addProject(Project project) {
		userJdbcTemplate.update(ADD_PROJECT, new Object[]{project.getName(), project.getDescription(), project.getCreated_by(), project.getUse_case_template(), project.getPolicy_name()});
		return false;
	}

}
