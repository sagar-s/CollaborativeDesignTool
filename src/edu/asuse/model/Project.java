package edu.asuse.model;

public class Project {
	String name;
	String description;
	String created_by;
	String use_case_template;
	String policy_name;
	String status;	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCreated_by() {
		return created_by;
	}
	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}
	public String getUse_case_template() {
		return use_case_template;
	}
	public void setUse_case_template(String use_case_template) {
		this.use_case_template = use_case_template;
	}
	public String getPolicy_name() {
		return policy_name;
	}
	public void setPolicy_name(String policy_name) {
		this.policy_name = policy_name;
	}
	
	@Override
	public String toString(){
		String res = "Name: " + this.getName() +
				"\nDescription: " + this.getDescription() +
				"\nCreated by: " + this.getCreated_by() +
				"\nStatus: " + this.getStatus() +
				"\nUse Case Template: " + this.getUse_case_template() +
				"\nPolicy name: " + this.getPolicy_name();
		return res;
	}
	
}
