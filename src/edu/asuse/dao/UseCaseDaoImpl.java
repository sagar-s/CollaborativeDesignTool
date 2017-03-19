package edu.asuse.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import edu.asuse.model.UseCaseDetails;

@Component
public class UseCaseDaoImpl implements UseCaseDao{
	
	@Autowired
	private JdbcTemplate userJdbcTemplate;
	
	//queries
	private static final String GET_USE_CASE_LIST = "select use_case_id id, status, end from use_case_details where project_name=? and email=? order by end";
	
	@Override
	public List<UseCaseDetails> getUseCaseList(String projectName, String email) {
		List<UseCaseDetails> useCaseList = userJdbcTemplate.query(GET_USE_CASE_LIST, new Object[]{projectName, email}, 
											new RowMapper<UseCaseDetails>(){
													public UseCaseDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
														UseCaseDetails useCaseObj = new UseCaseDetails();
														useCaseObj.setUseCaseID(rs.getString("id"));
														useCaseObj.setStatus(rs.getString("status"));
														useCaseObj.setEndDate(rs.getTimestamp("end"));
										                return useCaseObj;
										            }
												
												});
		return useCaseList;
	}

}
