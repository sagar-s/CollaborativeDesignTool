package edu.asuse.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import edu.asuse.model.EmailNotifications;
import edu.asuse.model.NonDesignerUseCaseDetails;
import edu.asuse.model.UseCaseDetails;
import edu.asuse.model.UseCaseTemplate1;
import edu.asuse.model.UseCaseTemplate2;

@Component
public class UseCaseDaoImpl implements UseCaseDao {

	@Autowired
	private JdbcTemplate userJdbcTemplate;


	// queries
	private static final String GET_USE_CASE_LIST_FOR_DESIGNER = "select project_name, use_case_id id, use_case_template, status, last_updated from use_case_details where project_name=? order by last_updated desc;";
	private static final String GET_USE_CASE_LIST_FOR_NON_DESIGNER = "select project_name, u.use_case_id id, use_case_template, status, last_updated, start_time, end_time from use_case_details u, email_notifications e where u.use_case_id=e.use_case_id and project_name=? and e.email=? order by last_updated desc;";
	private static final String ADD_USE_CASE_DETAILS = "insert into use_case_details(project_name , use_case_id, use_case_template, status) values(?,?,?,?);";
	private static final String ADD_USE_CASE_TO_TEMPLATE1 = "insert into usecasetemplate1(id, title, description, primary_actor, preconditions, postconditions, frequency_of_use, status, owner, priority) values(?,?,?,?,?,?,?,?,?,?);";
	private static final String ADD_USE_CASE_TO_TEMPLATE2 = "insert into collaborative_design_tool.usecasetemplate2(id, intent, scope, level, primary_actor, secondary_actors, diagram, preconditions, postconditions, owner, status, priority) values(?,?,?,?,?,?,?,?,?,?,?,?);";
	private static final String ADD_EMAIL_NOTIFICATION = "insert into email_notifications(use_case_id, email, start_time, end_time) values(?,?,?,?);";
	private static final String GET_TEMPLATE = "select use_case_template from use_case_details where use_case_id=?;";
	private static final String GET_USE_CASE_OF_TEMPLATE1 = "select id, title, description, primary_actor, preconditions, postconditions, frequency_of_use, status, owner, priority, last_updated from usecasetemplate1 where id=? order by last_updated desc limit 1;";
	private static final String GET_USE_CASE_OF_TEMPLATE2 = "select id, intent, scope, level, primary_actor, secondary_actors, preconditions, postconditions, owner, status, priority, last_updated from usecasetemplate2 where id=? order by last_updated desc limit 1;";
	private static final String GET_TIMEFRAME = "select * from email_notifications where use_case_id=? and email=?";
	private static final String GET_PREVIOUS_COMMITS_TEMP1 = "select * from usecasetemplate1 where id=? order by last_updated desc";
	private static final String GET_PREVIOUS_COMMITS_TEMP2 = "select * from usecasetemplate2 where id=? order by last_updated desc";
	
	@Override
	public List<UseCaseDetails> getUseCaseListForDesigner(String projectName, String email) {
		List<UseCaseDetails> useCaseList = userJdbcTemplate.query(GET_USE_CASE_LIST_FOR_DESIGNER,
				new Object[] { projectName}, new RowMapper<UseCaseDetails>() {
					public UseCaseDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
						UseCaseDetails useCaseObj = new UseCaseDetails();
						useCaseObj.setProjectname(rs.getString("project_name"));
						useCaseObj.setUseCaseID(rs.getString("id"));
						useCaseObj.setTemplate(rs.getString("use_case_template"));
						useCaseObj.setStatus(rs.getString("status"));
						useCaseObj.setLast_updated(rs.getTimestamp("last_updated"));
						return useCaseObj;
					}

				});
		return useCaseList;
	}
	@Override
	public List<NonDesignerUseCaseDetails> getUseCaseListForNonDesigner(String projectName, String email) {
		List<NonDesignerUseCaseDetails> useCaseList = userJdbcTemplate.query(GET_USE_CASE_LIST_FOR_NON_DESIGNER,
				new Object[] { projectName, email}, new RowMapper<NonDesignerUseCaseDetails>() {
					public NonDesignerUseCaseDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
						NonDesignerUseCaseDetails useCaseObj = new NonDesignerUseCaseDetails();
						useCaseObj.setProjectname(rs.getString("project_name"));
						useCaseObj.setUseCaseID(rs.getString("id"));
						useCaseObj.setTemplate(rs.getString("use_case_template"));
						useCaseObj.setStatus(rs.getString("status"));
						useCaseObj.setLast_updated(rs.getTimestamp("last_updated"));
						useCaseObj.setStartTime(rs.getTimestamp("start_time"));
						useCaseObj.setEndTime(rs.getTimestamp("end_time"));
						return useCaseObj;
					}

				});
		return useCaseList;
	}

	@Override
	@Transactional("cdtTransactionManager")	 
	public boolean addUseCaseToTemplate1(UseCaseTemplate1 usecase, UseCaseDetails usecasedetail, List<EmailNotifications> emailNotificationsList) {
		userJdbcTemplate.update(ADD_USE_CASE_DETAILS, new Object[]{usecasedetail.getProjectname(),usecasedetail.getUseCaseID(), usecasedetail.getTemplate(),usecasedetail.getStatus()});
		userJdbcTemplate.update(ADD_USE_CASE_TO_TEMPLATE1,new Object[]{usecase.getUseCaseID(),usecase.getTitle(),usecase.getDescription(),usecase.getPrimaryActor(),usecase.getPreconditions(),usecase.getPostconditions(),usecase.getFrequencyOfUse(), usecase.getStatus(),usecase.getOwner(),usecase.getPriority()});
		for(EmailNotifications emailNotification: emailNotificationsList)
			userJdbcTemplate.update(ADD_EMAIL_NOTIFICATION, new Object[]{emailNotification.getUseCaseID(), emailNotification.getEmail(), emailNotification.getStartTime(), emailNotification.getEndTime()} );
		return true;
	}
	@Override
	@Transactional("cdtTransactionManager")	
	public boolean addUseCaseToTemplate2(UseCaseTemplate2 usecase, UseCaseDetails usecasedetail, List<EmailNotifications> emailNotificationsList) {
		userJdbcTemplate.update(ADD_USE_CASE_DETAILS, new Object[]{usecasedetail.getProjectname(),usecasedetail.getUseCaseID(), usecasedetail.getTemplate(),usecasedetail.getStatus()});
		userJdbcTemplate.update(ADD_USE_CASE_TO_TEMPLATE2,new Object[]{usecase.getUseCaseID(),usecase.getIntent(),usecase.getScope(),usecase.getLevel(), usecase.getPrimaryActor(),usecase.getSecondaryActors(),usecase.getDiagram(), usecase.getPreconditions(),usecase.getPostconditions(),usecase.getOwner(),usecase.getStatus(),usecase.getPriority()});
		for(EmailNotifications emailNotification: emailNotificationsList)
			userJdbcTemplate.update(ADD_EMAIL_NOTIFICATION, new Object[]{emailNotification.getUseCaseID(), emailNotification.getEmail(), emailNotification.getStartTime(), emailNotification.getEndTime()} );
		return true;
	}
	@Override
	public UseCaseTemplate1 getUseCaseInfoTemplate1(String usecaseid) {
		UseCaseTemplate1 obj = userJdbcTemplate.queryForObject(GET_USE_CASE_OF_TEMPLATE1, new Object[]{usecaseid}, 
				new RowMapper<UseCaseTemplate1>(){
			public UseCaseTemplate1 mapRow(ResultSet rs, int rowNum) throws SQLException {
				UseCaseTemplate1 utobj = new UseCaseTemplate1();
				utobj.setUseCaseID(rs.getString("id"));
				utobj.setTitle(rs.getString("title"));
				utobj.setDescription(rs.getString("description"));
				utobj.setPrimaryActor(rs.getString("primary_actor"));
				utobj.setPreconditions(rs.getString("preconditions"));
				utobj.setPostconditions(rs.getString("postconditions"));
				utobj.setFrequencyOfUse(rs.getString("frequency_of_use"));
				utobj.setStatus(rs.getString("status"));
				utobj.setOwner(rs.getString("owner"));
				utobj.setPriority(rs.getString("priority"));
				utobj.setLastupdated(rs.getTimestamp("last_updated"));
				return utobj;
			}
       
	  });
		return obj;
	}
	@Override
	public UseCaseTemplate2 getUseCaseInfoTemplate2(String usecaseid) {
		UseCaseTemplate2 obj = userJdbcTemplate.queryForObject(GET_USE_CASE_OF_TEMPLATE2, new Object[]{usecaseid}, 
				new RowMapper<UseCaseTemplate2>(){
			public UseCaseTemplate2 mapRow(ResultSet rs, int rowNum) throws SQLException {
				UseCaseTemplate2 utobj = new UseCaseTemplate2();
				utobj.setUseCaseID(rs.getString("id"));
				utobj.setIntent(rs.getString("intent"));
				utobj.setScope(rs.getString("scope"));
				utobj.setLevel(rs.getString("level"));
				utobj.setPrimaryActor(rs.getString("primary_actor"));
				utobj.setSecondaryActors(rs.getString("secondary_actors"));
				utobj.setPreconditions(rs.getString("preconditions"));
				utobj.setPostconditions(rs.getString("postconditions"));
				utobj.setOwner(rs.getString("owner"));
				utobj.setStatus(rs.getString("status"));
				utobj.setPriority(rs.getString("priority"));
				utobj.setLastupdated(rs.getTimestamp("last_updated"));
				return utobj;
			}
       
	  });
		return obj;
	}
	@Override
	public String getTemplate(String usecaseid) {		
		List<String> template = userJdbcTemplate.query(GET_TEMPLATE, new Object[]{usecaseid},
				new RowMapper<String>(){
				public String mapRow(ResultSet rs, int rowNum) throws SQLException {
	        return rs.getString("use_case_template");
		  }

		});
		if ( template.isEmpty() ){
			  return null;
			}else if ( template.size() == 1 ) { // list contains exactly 1 element
			  return template.get(0);
			}else{  // list contains more than 1 elements
			  return null;    
			}
	}
	@Override
	public boolean commitUseCaseChangeToTemp1(UseCaseTemplate1 usecase) {
		userJdbcTemplate.update(ADD_USE_CASE_TO_TEMPLATE1,new Object[]{usecase.getUseCaseID(),usecase.getTitle(),usecase.getDescription(),usecase.getPrimaryActor(),usecase.getPreconditions(),usecase.getPostconditions(),usecase.getFrequencyOfUse(), usecase.getStatus(),usecase.getOwner(),usecase.getPriority()});
		return true;
	}
	@Override
	public boolean commitUseCaseChangeToTemp2(UseCaseTemplate2 usecase) {
		userJdbcTemplate.update(ADD_USE_CASE_TO_TEMPLATE2,new Object[]{usecase.getUseCaseID(),usecase.getIntent(),usecase.getScope(),usecase.getLevel(), usecase.getPrimaryActor(),usecase.getSecondaryActors(),usecase.getDiagram(), usecase.getPreconditions(),usecase.getPostconditions(),usecase.getOwner(),usecase.getStatus(),usecase.getPriority()});
		return true;
	}
	@Override
	public boolean checkExpiration(String useCaseID, String email) {
		EmailNotifications obj = userJdbcTemplate.queryForObject(GET_TIMEFRAME, new Object[]{useCaseID, email},
				new RowMapper<EmailNotifications>(){
			public EmailNotifications mapRow(ResultSet rs, int rowNum) throws SQLException {
				EmailNotifications obj = new EmailNotifications();
				obj.setUseCaseID(rs.getString("use_case_id"));
				obj.setEmail(rs.getString("email"));
				obj.setStartTime(rs.getTimestamp("start_time"));
				obj.setEndTime(rs.getTimestamp("end_time"));
				return obj;
			}
		});
		Timestamp currentTime = new Timestamp(System.currentTimeMillis());
		if((obj.getStartTime().getTime()<=currentTime.getTime()) && (obj.getEndTime().getTime()>currentTime.getTime())) return false;
		return true;
		
	}
	@Override
	public List<UseCaseTemplate1> getPreviousCommitsTemp1(String usecaseid) {
		List<UseCaseTemplate1> list = userJdbcTemplate.query(GET_PREVIOUS_COMMITS_TEMP1, new Object[]{usecaseid},
				new RowMapper<UseCaseTemplate1>(){
			public UseCaseTemplate1 mapRow(ResultSet rs, int rowNum) throws SQLException {
				UseCaseTemplate1 utobj = new UseCaseTemplate1();
				utobj.setUseCaseID(rs.getString("id"));
				utobj.setTitle(rs.getString("title"));
				utobj.setDescription(rs.getString("description"));
				utobj.setPrimaryActor(rs.getString("primary_actor"));
				utobj.setPreconditions(rs.getString("preconditions"));
				utobj.setPostconditions(rs.getString("postconditions"));
				utobj.setFrequencyOfUse(rs.getString("frequency_of_use"));
				utobj.setStatus(rs.getString("status"));
				utobj.setOwner(rs.getString("owner"));
				utobj.setPriority(rs.getString("priority"));
				utobj.setLastupdated(rs.getTimestamp("last_updated"));
				return utobj;
			}
		});
		return list;

	}
	@Override
	public List<UseCaseTemplate2> getPreviousCommitsTemp2(String usecaseid) {
		List<UseCaseTemplate2> list = userJdbcTemplate.query(GET_PREVIOUS_COMMITS_TEMP2, new Object[]{usecaseid},
				new RowMapper<UseCaseTemplate2>(){
			public UseCaseTemplate2 mapRow(ResultSet rs, int rowNum) throws SQLException {
				UseCaseTemplate2 utobj = new UseCaseTemplate2();
				utobj.setUseCaseID(rs.getString("id"));
				utobj.setIntent(rs.getString("intent"));
				utobj.setScope(rs.getString("scope"));
				utobj.setLevel(rs.getString("level"));
				utobj.setPrimaryActor(rs.getString("primary_actor"));
				utobj.setSecondaryActors(rs.getString("secondary_actors"));
				utobj.setPreconditions(rs.getString("preconditions"));
				utobj.setPostconditions(rs.getString("postconditions"));
				utobj.setOwner(rs.getString("owner"));
				utobj.setStatus(rs.getString("status"));
				utobj.setPriority(rs.getString("priority"));
				utobj.setLastupdated(rs.getTimestamp("last_updated"));
				return utobj;
			}
		});
		return list;
	}

}
