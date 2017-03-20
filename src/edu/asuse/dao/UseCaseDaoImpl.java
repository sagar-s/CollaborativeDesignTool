package edu.asuse.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionTemplate;

import edu.asuse.model.EmailNotifications;
import edu.asuse.model.UseCaseDetails;
import edu.asuse.model.UseCaseTemplate1;
import edu.asuse.model.UseCaseTemplate2;

@Component
public class UseCaseDaoImpl implements UseCaseDao {

	@Autowired
	private JdbcTemplate userJdbcTemplate;


	// queries
	private static final String GET_USE_CASE_LIST = "select use_case_id id, status, end from use_case_details where project_name=? and email=? order by end;";
	private static final String ADD_USE_CASE_DETAILS = "insert into use_case_details(project_name , use_case_id, use_case_template, status) values(?,?,?,?);";
	private static final String ADD_USE_CASE_TO_TEMPLATE1 = "insert into usecasetemplate1(id, title, description, primary_actor, preconditions, postconditions, frequency_of_use, status, owner, priority) values(?,?,?,?,?,?,?,?,?,?);";
	private static final String ADD_USE_CASE_TO_TEMPLATE2 = "insert into collaborative_design_tool.usecasetemplate2(id, intent, scope, level, primary_actor, secondary_actors, diagram, preconditions, postconditions, owner, status, priority) values(?,?,?,?,?,?,?,?,?,?,?,?);";
	private static final String ADD_EMAIL_NOTIFICATION = "insert into email_notifications(use_case_id, email, start_time, end_time) values(?,?,?,?);";
	
	@Override
	public List<UseCaseDetails> getUseCaseList(String projectName, String email) {
		List<UseCaseDetails> useCaseList = userJdbcTemplate.query(GET_USE_CASE_LIST,
				new Object[] { projectName, email }, new RowMapper<UseCaseDetails>() {
					public UseCaseDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
						UseCaseDetails useCaseObj = new UseCaseDetails();
						useCaseObj.setUseCaseID(rs.getString("id"));
						useCaseObj.setStatus(rs.getString("status"));
						// useCaseObj.setEndDate(rs.getTimestamp("end"));
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

}
