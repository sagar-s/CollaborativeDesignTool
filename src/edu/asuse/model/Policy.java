package edu.asuse.model;

public class Policy {
	String policyname;
	int devdays;
	int devminutes;
	int solndays;
	int solnminutes;
	int ardays;
	int arminutes;
	int qadays;
	int qaminutes;
	public String getPolicyname() {
		return policyname;
	}
	public void setPolicyname(String policyname) {
		this.policyname = policyname;
	}
	public int getDevdays() {
		return devdays;
	}
	public void setDevdays(int devdays) {
		this.devdays = devdays;
	}
	public int getDevminutes() {
		return devminutes;
	}
	public void setDevminutes(int devminutes) {
		this.devminutes = devminutes;
	}
	public int getSolndays() {
		return solndays;
	}
	public void setSolndays(int solndays) {
		this.solndays = solndays;
	}
	public int getSolnminutes() {
		return solnminutes;
	}
	public void setSolnminutes(int solnminutes) {
		this.solnminutes = solnminutes;
	}
	public int getArdays() {
		return ardays;
	}
	public void setArdays(int ardays) {
		this.ardays = ardays;
	}
	public int getArminutes() {
		return arminutes;
	}
	public void setArminutes(int arminutes) {
		this.arminutes = arminutes;
	}
	public int getQadays() {
		return qadays;
	}
	public void setQadays(int qadays) {
		this.qadays = qadays;
	}
	public int getQaminutes() {
		return qaminutes;
	}
	public void setQaminutes(int qaminutes) {
		this.qaminutes = qaminutes;
	}
	public String toString(){
		String res = "Policy name: " + this.getPolicyname() +
				"\nDev days: " + this.getDevdays() +
				"\nDev mins: " + this.getDevminutes() +
				"\nSoln days: " + this.getSolndays() +
				"\nSoln mins: " + this.getSolnminutes() +
				"\nAr days: " + this.getArdays() +
				"\nAr mins: " + this.getArminutes() +
				"\nQA days: " + this.getQadays() +
				"\nQA mins: " + this.getQaminutes();
		return res;
	}
	
}
