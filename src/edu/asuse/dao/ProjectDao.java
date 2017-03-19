package edu.asuse.dao;

import java.util.List;
import java.util.Map;

import edu.asuse.model.Project;
import edu.asuse.model.ProjectDetails;

public interface ProjectDao {
	public List<ProjectDetails> getProjectDetails(String email);
	public boolean addProject(Project project);
	public Map<String, List<String>> getCollaborators();
	public void addCollaborators(String name, String email);
	public void closeProject(String projectname);
	

}
