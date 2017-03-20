package edu.asuse.model;

import java.sql.Timestamp;

public class EmailNotifications {
	String useCaseID;
	String email;
	Timestamp startTime;
	Timestamp endTime;
	
	public String getUseCaseID() {
		return useCaseID;
	}
	public void setUseCaseID(String useCaseID) {
		this.useCaseID = useCaseID;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Timestamp getStartTime() {
		return startTime;
	}
	public void setStartTime(Timestamp startTime) {
		this.startTime = startTime;
	}
	public Timestamp getEndTime() {
		return endTime;
	}
	public void setEndTime(Timestamp endTime) {
		this.endTime = endTime;
	}
	@Override
	public String toString(){
		String res = "UseCaseID: " + this.getUseCaseID() +
				"\nEmail: " + this.getEmail() +
				"\nStart Time: " + this.getStartTime() +
				"\nEnd Time: " + this.getEndTime();
		return res;
	}
}
