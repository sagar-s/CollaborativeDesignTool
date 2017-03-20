package edu.asuse.model;

import java.sql.Timestamp;

public class UseCaseDetails {
	String projectname;
	String useCaseID;
	String template;
	String status;
	String last_updated;
	
	public String getUseCaseID() {
		return useCaseID;
	}
	public void setUseCaseID(String useCaseID) {
		this.useCaseID = useCaseID;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}	
	public String getProjectname() {
		return projectname;
	}
	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}
	public String getTemplate() {
		return template;
	}
	public void setTemplate(String template) {
		this.template = template;
	}
	public String getLast_updated() {
		return last_updated;
	}
	public void setLast_updated(String last_updated) {
		this.last_updated = last_updated;
	}
	public String toString(){	
		String res= "Project Name: " + this.getProjectname() +
				"\nUse Case ID: " + this.getUseCaseID() +
				"\nTemplate: " + this.getTemplate() +
				"\nStatus: " + this.getStatus() +
				"\nLast Updated: " + this.getLast_updated();
		return res;
	}
	
}
