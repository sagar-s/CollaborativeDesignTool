package edu.asuse.model;

public class Project {
	String name;
	String description;
	String created_by;
	String use_case_template;
	String policy_name;
	int dev_mgr_duration;
	int soln_mgr_duration;
	int arch_duration;
	int qa_duration;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public int getDev_mgr_duration() {
		return dev_mgr_duration;
	}
	public void setDev_mgr_duration(int dev_mgr_duration) {
		this.dev_mgr_duration = dev_mgr_duration;
	}
	public int getSoln_mgr_duration() {
		return soln_mgr_duration;
	}
	public void setSoln_mgr_duration(int soln_mgr_duration) {
		this.soln_mgr_duration = soln_mgr_duration;
	}
	public int getArch_duration() {
		return arch_duration;
	}
	public void setArch_duration(int arch_duration) {
		this.arch_duration = arch_duration;
	}
	public int getQa_duration() {
		return qa_duration;
	}
	public void setQa_duration(int qa_duration) {
		this.qa_duration = qa_duration;
	}
	@Override
	public String toString(){
		String res = "Name: " + this.getName() +
				"\nDescription: " + this.getDescription() +
				"\nCreated by: " + this.getCreated_by() +
				"\nUse Case Template: " + this.getUse_case_template() +
				"\nPolicy name: " + this.getPolicy_name();
		return res;
	}
	
}
