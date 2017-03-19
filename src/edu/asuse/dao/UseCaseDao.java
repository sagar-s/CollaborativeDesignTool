package edu.asuse.dao;

import java.util.List;

import edu.asuse.model.UseCaseDetails;

public interface UseCaseDao {
	public List<UseCaseDetails> getUseCaseList(String projectName, String email);

}
