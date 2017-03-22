package edu.asuse.model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class EmailHelpper {
	public static List<EmailNotifications> setStartAndEndTimes(String usecaseid, List<WorkDuration> workDurationList){
		List<EmailNotifications> list = new ArrayList<EmailNotifications>();	
		String policy = workDurationList.get(0).getPolicy_name();
		if("AllInOne".equals(policy) || "StartToStart".equals(policy)){
			for(WorkDuration wd:  workDurationList){
				EmailNotifications ele = new EmailNotifications();
				ele.setUseCaseID(usecaseid);
				ele.setEmail(wd.getAssigned_to());
				ele.setStartTime(new Timestamp(System.currentTimeMillis()));
				ele.setEndTime(new Timestamp(ele.getStartTime().getTime()+wd.getDuration()));
				System.out.println(ele);
				list.add(ele);
			}				
		}
		else if("FinishToStart".equals(policy)){
			Timestamp prevEndTime = new Timestamp(System.currentTimeMillis());
			for(WorkDuration wd:  workDurationList){
				EmailNotifications ele = new EmailNotifications();
				ele.setUseCaseID(usecaseid);
				ele.setEmail(wd.getAssigned_to());
				ele.setStartTime(prevEndTime);
				System.out.println();
				ele.setEndTime(new Timestamp(ele.getStartTime().getTime()+wd.getDuration()));
				prevEndTime = ele.getEndTime();
				System.out.println(ele);
				list.add(ele);
			}				
		}
		return list;
	}

}
