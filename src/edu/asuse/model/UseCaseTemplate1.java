package edu.asuse.model;

public class UseCaseTemplate1 extends UseCase{
	
	String title;
	String description;
	String frequencyOfUse;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getFrequencyOfUse() {
		return frequencyOfUse;
	}
	public void setFrequencyOfUse(String frequencyOfUse) {
		this.frequencyOfUse = frequencyOfUse;
	}
	public String toString(){
		String res = "UseCaseID: " + this.getUseCaseID()+
				"\nTitle: " + this.getTitle()+ 
				"\nDescription: " + this.getDescription() +
				"\nPrimary Actor: " + this.getPrimaryActor() +
				"\nPre-Conditions: " + this.getPreconditions() +
				"\nPost-Conditions: " + this.getPostconditions() +
				"\nFrequency of Use: " + this.getFrequencyOfUse() +
				"\nStatus: " + this.getStatus() +
				"\nOwner: " + this.getOwner() +
				"\nPriority: " + this.getPriority();
		return res;
		
	}
}
