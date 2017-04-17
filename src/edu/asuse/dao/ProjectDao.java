package edu.asuse.dao;

import java.util.List;
import java.util.Map;

import edu.asuse.model.Policy;
import edu.asuse.model.Project;
import edu.asuse.model.ProjectDetails;
import edu.asuse.model.WorkDuration;

public interface ProjectDao {
	public List<ProjectDetails> getProjectDetails(String email);
	public boolean addProject(Project project, List<String> collaborators, Policy policyobj );
	public Map<String, List<String>> getCollaborators();
	public List<WorkDuration> getWorkDuration(String projectname);
	public void closeProject(String projectname);
}
