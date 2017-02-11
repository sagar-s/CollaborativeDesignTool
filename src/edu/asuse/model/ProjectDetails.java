package edu.asuse.model;

public class ProjectDetails {
	String name;
	String description;
	int dev_mgr_duration;
	int soln_mgr_duration;
	int arch_duration;
	int QA_duration;
	int totalusecases;
	String created_by;
	String uct;
	String policy_name;
	public ProjectDetails(){
		
	}
	public ProjectDetails(String name, String description){
		this.name = name;
		this.description = description;
	}
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
	public int getTotalusecases() {
		return totalusecases;
	}

	public String getUct() {
		return uct;
	}
	public void setUct(String uct) {
		this.uct = uct;
	}
	public String getcreated_by() {
		return created_by;
	}
	public void setcreated_by(String created_by) {
		this.created_by = created_by;
	}
	public String getpolicy_name() {
		
		return policy_name;
	}
	public void setpolicy_name(String policy_name) {
		this.policy_name = policy_name;
	}
	public int getdev_mgr_duration() {
		return dev_mgr_duration;
	}
	public void setdev_mgr_duration(int dev_mgr_duration) {
		this.dev_mgr_duration = dev_mgr_duration;
	}
	public int getQA_duration() {
		
		return QA_duration;
	}
	public void setsoln_mgr_duration(int soln_mgr_duration) {
		this.soln_mgr_duration = soln_mgr_duration;
	}
	public int getarch_duration() {
		return arch_duration;
	}
	public void arch_duration(int arch_duration) {
		this.arch_duration = arch_duration;
	}
	public void setQA_duration(int QA_duration) {
		this.QA_duration = QA_duration;
	}
	public int getsoln_mgr_duration() {
		
		return soln_mgr_duration;
	}
	public void setTotalusecases(int totalusecases) {
		this.totalusecases = totalusecases;
	}
	
	
}
