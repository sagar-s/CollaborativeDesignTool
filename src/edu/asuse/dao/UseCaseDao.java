package edu.asuse.dao;

import java.util.List;

import edu.asuse.model.UseCaseDetails;
import edu.asuse.model.UseCaseTemplate1;
import edu.asuse.model.UseCaseTemplate2;

public interface UseCaseDao {
	public List<UseCaseDetails> getUseCaseList(String projectName, String email);
	public boolean addUseCaseToTemplate1(UseCaseTemplate1 usecase, UseCaseDetails usecasedetail);
	public boolean addUseCaseToTemplate2(UseCaseTemplate2 usecase, UseCaseDetails usecasedetail);
}
