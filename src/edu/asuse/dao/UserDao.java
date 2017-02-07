package edu.asuse.dao;

import java.sql.SQLException;
import java.util.List;

import edu.asuse.model.ProjectDetails;
import edu.asuse.model.User;

public interface UserDao {
	public boolean isValidUser(User user) throws SQLException;
	public List<ProjectDetails> getProjectDetails(String emailID, String role) throws SQLException;
	public boolean addproject(ProjectDetails projectdetails) throws SQLException;
}

