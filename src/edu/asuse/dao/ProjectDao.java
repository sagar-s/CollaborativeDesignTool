package edu.asuse.dao;

import java.util.List;

import edu.asuse.model.Project;
import edu.asuse.model.ProjectDetails;

public interface ProjectDao {
	public List<ProjectDetails> getProjectDetails(String email);
	public boolean addProject(Project project);

}
