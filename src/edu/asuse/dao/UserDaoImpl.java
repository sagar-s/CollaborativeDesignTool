package edu.asuse.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import edu.asuse.model.User;

@Component
public class UserDaoImpl implements UserDao {

	@Autowired
	private JdbcTemplate userJdbcTemplate;

	// queries
	private static final String GET_USER_INFO = "select count(*) from user where email = ? and password = ? and role = ?";

	@Override
	public boolean isValidUser(User user) {

		int count = userJdbcTemplate.queryForObject(GET_USER_INFO,
				new Object[] { user.getEmail(), user.getPassword(), user.getRole() }, Integer.class);

		return (count == 1);
	}

}
