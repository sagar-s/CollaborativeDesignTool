package edu.asuse.model;

import java.sql.Timestamp;

public class UseCase {	
	
	String useCaseID;
	String primaryActor;
	String preconditions;
	String postconditions;
	String owner;
	String status;
	String priority;
	Timestamp lastupdated;
	
	public String getUseCaseID() {
		return useCaseID;
	}
	public void setUseCaseID(String useCaseID) {
		this.useCaseID = useCaseID;
	}	
	public String getPrimaryActor() {
		return primaryActor;
	}
	public void setPrimaryActor(String primaryActor) {
		this.primaryActor = primaryActor;
	}
	public String getPreconditions() {
		return preconditions;
	}
	public void setPreconditions(String preconditions) {
		this.preconditions = preconditions;
	}
	public String getPostconditions() {
		return postconditions;
	}
	public void setPostconditions(String postconditions) {
		this.postconditions = postconditions;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public Timestamp getLastupdated() {
		return lastupdated;
	}
	public void setLastupdated(Timestamp lastupdated) {
		this.lastupdated = lastupdated;
	}
	
}
