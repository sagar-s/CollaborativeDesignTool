package edu.asuse.model;

import java.util.List;

public class ProjectDetails {
	Project project;
	List<String> devMgrs;
	List<String> solnMgrs;
	List<String> architects;
	List<String> qa;
	public Project getProject() {
		return project;
	}
	public void setProject(Project project) {
		this.project = project;
	}
	public List<String> getDevMgrs() {
		return devMgrs;
	}
	public void setDevMgrs(List<String> devMgrs) {
		this.devMgrs = devMgrs;
	}
	public List<String> getSolnMgrs() {
		return solnMgrs;
	}
	public void setSolnMgrs(List<String> solnMgrs) {
		this.solnMgrs = solnMgrs;
	}
	public List<String> getArchitects() {
		return architects;
	}
	public void setArchitects(List<String> architects) {
		this.architects = architects;
	}
	public List<String> getQa() {
		return qa;
	}
	public void setQa(List<String> qa) {
		this.qa = qa;
	}	
}
