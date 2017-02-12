package edu.asuse.dao;

import java.sql.SQLException;
import java.util.List;

import edu.asuse.model.ProjectDetails;
import edu.asuse.model.User;

public interface UserDao {
	public boolean isValidUser(User user);
	public boolean addNewUser(User user);	
}

