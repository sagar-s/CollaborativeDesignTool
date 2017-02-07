package edu.asuse.model;

public class ProjectDetails {
	String name;
	String description;
	int totalusecases;	
	UseCaseTemplate uct;
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
	public void setTotalusecases(int totalusecases) {
		this.totalusecases = totalusecases;
	}
	public UseCaseTemplate getUct() {
		return uct;
	}
	public void setUct(UseCaseTemplate uct) {
		this.uct = uct;
	}

}
