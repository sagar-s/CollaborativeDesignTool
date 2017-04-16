package edu.asuse.dao;

import java.util.List;

import edu.asuse.model.EmailNotifications;
import edu.asuse.model.NonDesignerUseCaseDetails;
import edu.asuse.model.UseCaseDetails;
import edu.asuse.model.UseCaseTemplate1;
import edu.asuse.model.UseCaseTemplate2;

public interface UseCaseDao {
	public List<UseCaseDetails> getUseCaseListForDesigner(String projectName, String email);
	public List<NonDesignerUseCaseDetails> getUseCaseListForNonDesigner(String projectName, String email);
	public UseCaseTemplate1 getUseCaseInfoTemplate1(String usecaseid);
	public UseCaseTemplate2 getUseCaseInfoTemplate2(String usecaseid);
	public String getTemplate(String usecaseid);
	public boolean addUseCaseToTemplate1(UseCaseTemplate1 usecase, UseCaseDetails usecasedetail, List<EmailNotifications> emailNotificationsList);
	public boolean addUseCaseToTemplate2(UseCaseTemplate2 usecase, UseCaseDetails usecasedetail, List<EmailNotifications> emailNotificationsList);
	public boolean commitUseCaseChangeToTemp1(UseCaseTemplate1 usecase);
	public boolean commitUseCaseChangeToTemp2(UseCaseTemplate2 usecase);
}
