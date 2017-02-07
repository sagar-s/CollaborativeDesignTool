package edu.asuse.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

import edu.asuse.model.ProjectDetails;
import edu.asuse.model.User;

public class UserDaoImpl implements UserDao{
	
	@Autowired
	DataSource datasource;
	
	String query;
	@Override
	public boolean isValidUser(User user) throws SQLException{
		
		query = "Select count(1) from user where email = ? and password = ? and role = ? ";
		PreparedStatement stmt = datasource.getConnection().prepareStatement(query);
		stmt.setString(1, user.getEmailID());
		stmt.setString(2, user.getPassword());
		stmt.setString(3, user.getRole());
		ResultSet rs = stmt.executeQuery();
		if(rs.next())
			return (rs.getInt(1)>0);
		else 
			return false;
	}

	@Override
	public List<ProjectDetails> getProjectDetails(String emailID, String role) throws SQLException {
		
		List<ProjectDetails> projectlist = new ArrayList<ProjectDetails>();
		if("designer".equals(role)){
			query = "Select * from projects where created_by = ? ";			
		}else{
			query = "Select * from assigned where assigned_to = ? ";
		}	
		PreparedStatement stmt = datasource.getConnection().prepareStatement(query);
		stmt.setString(1, emailID);
		ResultSet rs = stmt.executeQuery();
		while(rs.next())
			projectlist.add(new ProjectDetails(rs.getString(1),rs.getString(2))); 
		return projectlist;		
	}

	@Override
	public boolean addproject(ProjectDetails projectdetails) throws SQLException {
		query = "insert into projects values( ?,?,?,?) ";
		PreparedStatement stmt = datasource.getConnection().prepareStatement(query);
		stmt.setString(1, projectdetails.getName());
		stmt.setString(2, projectdetails.getDescription());
		stmt.setString(3, "dummy");
		stmt.setString(4, "dummy");
		ResultSet rs = stmt.executeQuery();
		return false;
	}

}
