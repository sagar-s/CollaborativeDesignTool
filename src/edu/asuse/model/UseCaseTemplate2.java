package edu.asuse.model;

public class UseCaseTemplate2 extends UseCase{
	String intent;
	String scope;
	String level;
	String secondaryActors;
	String diagram;
	
	public String getIntent() {
		return intent;
	}
	public void setIntent(String intent) {
		this.intent = intent;
	}
	public String getScope() {
		return scope;
	}
	public void setScope(String scope) {
		this.scope = scope;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getSecondaryActors() {
		return secondaryActors;
	}
	public void setSecondaryActors(String secondaryActors) {
		this.secondaryActors = secondaryActors;
	}
	public String getDiagram() {
		return diagram;
	}
	public void setDiagram(String diagram) {
		this.diagram = diagram;
	}
	@Override
	public String toString(){
		String res = "{" 
		+"'UseCaseID': '" + this.getUseCaseID()+"'"
		+"," +" 'Intent': '" + this.getIntent()+"'"
		+"," +" 'Scope': '" + this.getScope()+"'"
		+", "+" 'Level': '" + this.getLevel()+"'"
		+"," +" 'Primary Actor': '" + this.getPrimaryActor()+"'"
		+"," +" 'Secondary Actors': '" + this.getSecondaryActors()+"'"
		+"," +" 'Pre-Conditions': '" + this.getPreconditions()+"'"
		+"," +" 'Post-Conditions': '" + this.getPostconditions()+"'"
		+"," +" 'Status': '" + this.getStatus()+"'"
		+"," +" 'Owner': '" + this.getOwner()+"'"
		+"," +" 'Priority': '" + this.getPriority()+"'"
		+","+" 'Creation Time': '"+ this.getLastupdated()+"'"
		+"}";
		return res;
	}
	
}
