package edu.asuse.dao;

import java.util.List;

import edu.asuse.model.Policy;

public interface PolicyDao {
	public List<Policy> getPolicies();
	public boolean addPolicy(Policy policyobj);
}
