package edu.asuse.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import edu.asuse.model.Policy;

@Component
public class PolicyDaoImpl implements PolicyDao {
	
	@Autowired
	private JdbcTemplate userJdbcTemplate;
	
	// queries
		private static final String GET_ALL_POLICIES = "select * from policy;";
		private static final String ADD_POLICY = "insert into policy(name, description) values(?,?);";
	@Override
	public List<Policy> getPolicies() {
		List<Policy> policyList = userJdbcTemplate.query(GET_ALL_POLICIES,
				new RowMapper<Policy>(){
			public Policy mapRow(ResultSet rs, int rowNum) throws SQLException {
				Policy obj = new Policy();
				obj.setPolicyname(rs.getString("name"));
				obj.setDescription(rs.getString("description"));
				return obj;
			}
		});		
		return policyList;	
	}

	@Override
	public boolean addPolicy(String policyname, String description) {
		userJdbcTemplate.update(ADD_POLICY, new Object[] {policyname, description});
		return true;
	}


}
