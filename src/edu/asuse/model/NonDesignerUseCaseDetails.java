package edu.asuse.model;

import java.sql.Timestamp;

public class NonDesignerUseCaseDetails extends UseCaseDetails{
	Timestamp startTime;
	Timestamp endTime;
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
	

}
