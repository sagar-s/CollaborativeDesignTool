package edu.asuse.model;

import java.util.List;

public class User {
	String emailID;
	String password;
	String role;
	List<ProjectDetails> projectdetails;
	
	public String getEmailID() {
		return emailID;
	}
	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public List<ProjectDetails> getProjectdetails() {
		return projectdetails;
	}
	public void setProjectdetails(List<ProjectDetails> projectdetails) {
		this.projectdetails = projectdetails;
	}
	
	

}
