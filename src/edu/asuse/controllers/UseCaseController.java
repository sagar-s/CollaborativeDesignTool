package edu.asuse.controllers;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import edu.asuse.dao.UseCaseDao;
import edu.asuse.model.UseCaseDetails;

@Controller
@SessionAttributes({"username","userrole"})
public class UseCaseController {
	
	@Autowired
	private UseCaseDao useCaseDao;
	
	@RequestMapping(value = "redirecttotemplate", method = RequestMethod.GET)
	public ModelAndView redirectToTemplate(@RequestParam("projectname") String projectname, @RequestParam("template") String template){		
		ModelAndView model = new ModelAndView(template);
		model.addObject("projectname", projectname);
		return model;		
	}
	@RequestMapping(value = "createusecase", method = RequestMethod.GET)
	public ModelAndView AddUseCase(@RequestParam("projectname") String projectname){		
		ModelAndView model = new ModelAndView("viewusecase");
		model.addObject("projectname", projectname);
		return model;		
	}
	
	@RequestMapping(value = "viewusecaselist", method = RequestMethod.GET)
	public ModelAndView viewAllUseCases(@RequestParam("projectname") String projectName, HttpSession session){
		ModelAndView model = new ModelAndView("viewusecase");
		String role= session.getAttribute("userrole").toString();
		List<UseCaseDetails> list = useCaseDao.getUseCaseList(projectName, session.getAttribute("username").toString());
		List<UseCaseDetails> criticalList = new ArrayList<UseCaseDetails>();
		List<UseCaseDetails> activeList = new ArrayList<UseCaseDetails>();
		List<UseCaseDetails> inActiveList = new ArrayList<UseCaseDetails>();
		if("designer".equals(role)){
			for(UseCaseDetails obj:list){
				if("pending review".equals(obj.getStatus())) activeList.add(obj);
				else inActiveList.add(obj);
			}
		}else{
			Timestamp current = new Timestamp(Calendar.getInstance().getTime().getTime());
			for(UseCaseDetails obj:list){
				long diffInDays=obj.getEndDate().getTime()-current.getTime()/(1000*60*60*24);
				if(diffInDays<=1) criticalList.add(obj);
				else if(diffInDays>1)activeList.add(obj);
				else inActiveList.add(obj);
			}			
		}
		model.addObject("criticalList", criticalList);
		model.addObject("activeList", activeList);
		model.addObject("inActiveList", inActiveList);
		model.addObject("projectname", projectName);
		System.out.println(criticalList);
		System.out.println(activeList);
		System.out.println(inActiveList);
		return model;	
	}
	public ModelAndView viewUseCase(){
		//to be added
		return null;		
	}
	public ModelAndView compare(){
		//to be added
		return null;		
	}
}

