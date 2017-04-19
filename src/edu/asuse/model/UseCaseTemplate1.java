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
		String res = "{";
		if(this.getUseCaseID()!=null) res = res+"'UseCaseID': '" + this.getUseCaseID()+"'";
		if(this.getTitle()!=null) res= res +"," +" 'Title': '" + this.getTitle()+"'";
		if(this.getDescription()!=null) res= res +"," +" 'Description': '" + this.getDescription()+"'";
		if(this.getPrimaryActor()!=null) res= res +"," +" 'Primary Actor': '" + this.getPrimaryActor()+"'";
		if(this.getPreconditions()!=null)res= res +"," +" 'Pre-Conditions': '" + this.getPreconditions()+"'";
		if(this.getPostconditions()!=null)res= res +"," +" 'Post-Conditions': '" + this.getPostconditions()+"'";
		if(this.getFrequencyOfUse()!=null)res= res +"," +" 'Frequency of Use': '" + this.getFrequencyOfUse()+"'";
		if(this.getStatus()!=null)res= res +"," +" 'Status': '" + this.getStatus()+"'";
		if(this.getOwner()!=null)res= res +"," +" 'Owner': '" + this.getOwner()+"'";
		if(this.getPriority()!=null)res= res +"," +" 'Priority': '" + this.getPriority()+"'";
		res=res+"}";
		return res;
		
	}
}
