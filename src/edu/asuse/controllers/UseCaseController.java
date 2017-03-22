package edu.asuse.controllers;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import edu.asuse.dao.ProjectDao;
import edu.asuse.dao.UseCaseDao;
import edu.asuse.model.EmailHelpper;
import edu.asuse.model.NonDesignerUseCaseDetails;
import edu.asuse.model.UseCaseDetails;
import edu.asuse.model.UseCaseTemplate1;
import edu.asuse.model.UseCaseTemplate2;

@Controller
@SessionAttributes({"useremail","userrole"})
public class UseCaseController {
	
	@Autowired
	UseCaseDao useCaseDao;
	@Autowired
	ProjectDao projectDao;
	
	
	@RequestMapping(value = "redirecttotemplate", method = RequestMethod.GET)
	public ModelAndView redirectToTemplate(@RequestParam("projectname") String projectname,@RequestParam("template") String template ){		
		ModelAndView model = new ModelAndView(template);
		model.addObject("projectname", projectname);
		model.addObject("template", template);
		return model;		
	}
	@RequestMapping(value = "createusecasetemp1", method = RequestMethod.POST)
	public ModelAndView addUseCaseToTemplate1(@ModelAttribute("usecase") UseCaseTemplate1 usecase, @ModelAttribute("usecasedetail") UseCaseDetails usecasedetail){		
		ModelAndView model = new ModelAndView("redirect:/viewusecaselist");
		useCaseDao.addUseCaseToTemplate1(usecase, usecasedetail, 
				//emailNotificationsList
				EmailHelpper.setStartAndEndTimes(usecase.getUseCaseID(),projectDao.getWorkDuration(usecasedetail.getProjectname())));	
		model.addObject("projectname", usecasedetail.getProjectname());
		return model;		
	}
	@RequestMapping(value = "createusecasetemp2", method = RequestMethod.POST)
	public ModelAndView addUseCaseToTemplate2(@ModelAttribute("usecase") UseCaseTemplate2 usecase, @ModelAttribute("usecasedetail") UseCaseDetails usecasedetail){		
		ModelAndView model = new ModelAndView("redirect:/viewusecaselist");
		useCaseDao.addUseCaseToTemplate2(usecase, usecasedetail,
				EmailHelpper.setStartAndEndTimes(usecase.getUseCaseID(),projectDao.getWorkDuration(usecasedetail.getProjectname())));
		model.addObject("projectname", usecasedetail.getProjectname());
		return model;		
	}
	
	@RequestMapping(value = "viewusecaselist", method = RequestMethod.GET)
	public ModelAndView viewAllUseCases(@RequestParam("projectname") String projectName, HttpSession session){
		ModelAndView model = new ModelAndView("viewusecase");
		String role= session.getAttribute("userrole").toString();		
		List<UseCaseDetails> criticalList = new ArrayList<UseCaseDetails>();
		List<UseCaseDetails> activeList = new ArrayList<UseCaseDetails>();
		List<UseCaseDetails> inActiveList = new ArrayList<UseCaseDetails>();
		if("designer".equals(role)){
			List<UseCaseDetails> list = useCaseDao.getUseCaseListForDesigner(projectName, session.getAttribute("useremail").toString());
			for(UseCaseDetails obj:list){
				if("pending review".equals(obj.getStatus())) activeList.add(obj);
				else inActiveList.add(obj);
			}
		}else{
			List<NonDesignerUseCaseDetails> list = useCaseDao.getUseCaseListForNonDesigner(projectName, session.getAttribute("useremail").toString());
			Timestamp current = new Timestamp(Calendar.getInstance().getTime().getTime());
			for(NonDesignerUseCaseDetails obj:list){
				long diffInDays=(obj.getEndTime().getTime()-current.getTime())/(1000*60*60*24);
				long startDiff = current.getTime()-obj.getStartTime().getTime();
				if(diffInDays<=1) criticalList.add(obj);				
				else if(diffInDays>1 && startDiff>=0)activeList.add(obj);
				else inActiveList.add(obj);
			}	
		}
		model.addObject("criticalList", criticalList);
		model.addObject("activeList", activeList);
		model.addObject("inActiveList", inActiveList);
		model.addObject("projectname", projectName);
		return model;	
	}
	@RequestMapping(value = "viewusecase", method = RequestMethod.GET)
	public ModelAndView viewUseCase(@ModelAttribute("usecaseid") String usecaseid){
		ModelAndView model = new ModelAndView();
		String template = useCaseDao.getTemplate(usecaseid);
		model.setViewName(template);
		if("usecasetemplate1".equals(template)) model.addObject("usecase", useCaseDao.getUseCaseInfoTemplate1(usecaseid));
		else model.addObject("usecase", useCaseDao.getUseCaseInfoTemplate2(usecaseid));
		return model;		
	}
	public ModelAndView compare(){
		//to be added
		return null;		
	}
}

