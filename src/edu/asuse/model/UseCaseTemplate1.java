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
	@Override
	public String toString(){
		String res = "{" 
		+"'UseCaseID': '" + this.getUseCaseID()+"'"
		+"," +" 'Title': '" + this.getTitle()+"'"
		+"," +" 'Description': '" + this.getDescription()+"'"
		+"," +" 'Primary Actor': '" + this.getPrimaryActor()+"'"
		+"," +" 'Pre-Conditions': '" + this.getPreconditions()+"'"
		+"," +" 'Post-Conditions': '" + this.getPostconditions()+"'"
		+"," +" 'Frequency of Use': '" + this.getFrequencyOfUse()+"'"
		+"," +" 'Status': '" + this.getStatus()+"'"
		+"," +" 'Owner': '" + this.getOwner()+"'"
		+"," +" 'Priority': '" + this.getPriority()+"'"
		+","+" 'Creation Time': '"+ this.getLastupdated()+"'"
		+"}";
		return res;
		
	}
}
