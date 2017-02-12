package edu.asuse.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import edu.asuse.model.ProjectDetails;
import edu.asuse.model.User;

@Component
public class UserDaoImpl implements UserDao {

	@Autowired
	private DataSource datasource;
	@Autowired
	private JdbcTemplate userJdbcTemplate;

	// queries
	private static final String GET_USER_INFO = "select count(1) from user where email = ? and password = ? and role = ?";
	
	

	@Override
	public boolean isValidUser(User user) {

		User result = userJdbcTemplate.queryForObject(GET_USER_INFO,
				new Object[] { user.getEmail(), user.getPassword(), user.getRole() },
				new BeanPropertyRowMapper<User>(User.class));
		return (result != null);
	}

	@Override
	public List<ProjectDetails> getProjectDetails(String emailID, String role) throws SQLException {
		String query;
		List<ProjectDetails> projectlist = new ArrayList<ProjectDetails>();
		if ("designer".equals(role)) {
			query = "select p.name, p.description, p.created_by, a.assigned_to, "
					+ "u.role from projects p,assigned a, user u where "
					+ "p.name=a.project_name and a.assigned_to=u.email;";

		} else {
			query = "Select * from projects INNER JOIN assigned ON projects.name=assigned.project_name where assigned_to = ? ";
		}
		PreparedStatement stmt = datasource.getConnection().prepareStatement(query);
		stmt.setString(1, emailID);
		ResultSet rs = stmt.executeQuery();
		while (rs.next())
			projectlist.add(new ProjectDetails(rs.getString(1), rs.getString(2)));
		return projectlist;
	}

	@Override
	public boolean addproject(ProjectDetails projectdetails) throws SQLException {
		String query;
		query = "insert into projects values( ?,?,?,?) ";
		PreparedStatement stmt = datasource.getConnection().prepareStatement(query);
		stmt.setString(1, projectdetails.getName());
		stmt.setString(2, projectdetails.getDescription());
		stmt.setString(3, projectdetails.getcreated_by());
		stmt.setString(4, projectdetails.getUct());
		stmt.setString(5, projectdetails.getpolicy_name());
		stmt.setInt(6, projectdetails.getdev_mgr_duration());
		stmt.setInt(7, projectdetails.getsoln_mgr_duration());
		stmt.setInt(8, projectdetails.getarch_duration());
		stmt.setInt(9, projectdetails.getQA_duration());
		ResultSet rs = stmt.executeQuery();
		return false;
	}

}
