package edu.asuse.model;

import java.sql.Timestamp;

public class UseCaseDetails {
	
	String useCaseID;
	String status;
	Timestamp endDate;
	
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
	public Timestamp getEndDate() {
		return endDate;
	}
	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}
	public String toString(){		
		return this.useCaseID+ " "+ this.getStatus() + " "+ this.getEndDate();
	}
	
}
