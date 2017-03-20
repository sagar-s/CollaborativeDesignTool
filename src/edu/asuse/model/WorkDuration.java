package edu.asuse.model;

import java.util.List;

public class  WorkDuration{
	String policy_name;
	String assigned_to;
	int duration;
	public String getPolicy_name() {
		return policy_name;
	}
	public void setPolicy_name(String policy_name) {
		this.policy_name = policy_name;
	}
	public String getAssigned_to() {
		return assigned_to;
	}
	public void setAssigned_to(String assigned_to) {
		this.assigned_to = assigned_to;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	@Override
	public String toString(){
		String res = "Policy name: " + this.getPolicy_name() +
				"\nAssigned To: " + this.getAssigned_to() +
				"\nDuration: " + this.getDuration();
		return res;
	}

}
