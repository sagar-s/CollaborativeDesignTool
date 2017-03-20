package edu.asuse.model;

import java.util.Comparator;

public class ProjectDetailsComparator implements Comparator<ProjectDetails>{
	@Override
	public int compare(ProjectDetails o1, ProjectDetails o2) {
		
		if("open".equals(o1.getProject().getStatus()) && "closed".equals(o2.getProject().getStatus()))
			return -1;
		else if("open".equals(o2.getProject().getStatus()) && "closed".equals(o1.getProject().getStatus()))
				return 1;		
		return 0;
	}	

}
