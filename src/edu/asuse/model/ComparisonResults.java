package edu.asuse.model;

public class ComparisonResults {
	String field;
	String additions;
	String deletions;
	Boolean equal;
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	public String getAdditions() {
		return additions;
	}
	public void setAdditions(String additions) {
		this.additions = additions;
	}
	public String getDeletions() {
		return deletions;
	}
	public void setDeletions(String deletions) {
		this.deletions = deletions;
	}
	public Boolean getEqual() {
		return equal;
	}
	public void setEqual(Boolean equal) {
		this.equal = equal;
	}	
	public String toString(){
		String res= "field= "+this.getField()+", "+"additions= "+this.getAdditions() + ", "+"deletions= "+this.getDeletions()+ ", "+ "equal= "+ this.getEqual();
		return res;
	}

}
