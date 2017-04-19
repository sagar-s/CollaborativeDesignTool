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
import edu.asuse.model.ComparisonResults;
import edu.asuse.model.EmailHelpper;
import edu.asuse.model.NonDesignerUseCaseDetails;
import edu.asuse.model.UseCaseDetails;
import edu.asuse.model.UseCaseTemplate1;
import edu.asuse.model.UseCaseTemplate2;
import edu.asuse.model.UseCaseVersionComparator;

@Controller
@SessionAttributes({"useremail","userrole"})
public class UseCaseController {
	
	@Autowired
	UseCaseDao useCaseDao;
	@Autowired
	ProjectDao projectDao;
	
	
	@RequestMapping(value = "redirecttotemplate", method = RequestMethod.POST)
	public ModelAndView redirectToTemplate(@RequestParam("projectname") String projectname,@RequestParam("template") String template ){		
		ModelAndView model = new ModelAndView(template);
		model.addObject("projectname", projectname);
		model.addObject("template", template);
		model.addObject("editstatus", "new");
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
				if((obj.getEndTime().getTime() <= current.getTime())||("pending review".equals(obj.getStatus())) || ("closed".equals(obj.getStatus()))) inActiveList.add(obj);
				else{
				long diffInDays=(obj.getEndTime().getTime()-current.getTime())/(1000*60*60*24);
				long startDiff = current.getTime()-obj.getStartTime().getTime();
				if(startDiff<0) inActiveList.add(obj);
				else{
					if(diffInDays<=1)criticalList.add(obj);
					else activeList.add(obj);
				}				
			}	
		  }
		}
		model.addObject("criticalList", criticalList);
		model.addObject("activeList", activeList);
		model.addObject("inActiveList", inActiveList);
		model.addObject("projectname", projectName);
		return model;	
	}
	@RequestMapping(value = "viewusecase", method = RequestMethod.GET)
	public ModelAndView viewUseCase(@RequestParam("usecaseid") String usecaseid, @RequestParam(value = "template", required=false) String template, @RequestParam("editstatus") String editstatus, @RequestParam(value="msg", required=false) String msg){
		ModelAndView model = new ModelAndView();
		if(template==null) template = useCaseDao.getTemplate(usecaseid);
		model.setViewName(template);
		if("usecasetemplate1".equals(template)) {
			model.addObject("usecase", useCaseDao.getUseCaseInfoTemplate1(usecaseid));
			List<UseCaseTemplate1> commitList = useCaseDao.getPreviousCommitsTemp1(usecaseid);
			commitList.remove(0);
			model.addObject("commitList", commitList);
		}
		else if("usecasetemplate2".equals(template)){
			model.addObject("usecase", useCaseDao.getUseCaseInfoTemplate2(usecaseid));
			List<UseCaseTemplate2> commitList = useCaseDao.getPreviousCommitsTemp2(usecaseid);
			commitList.remove(0);
			model.addObject("commitList", commitList);
		}
		model.addObject("template", template);
		model.addObject("editstatus", editstatus);	
		model.addObject("msg", msg);
		return model;		
	}
	
	@RequestMapping(value = "editusecasetemp1", method = RequestMethod.POST)
	public ModelAndView commitUseCaseChangeToTemp1(@ModelAttribute("usecase") UseCaseTemplate1 usecase,@RequestParam("template") String template, HttpSession session){
		ModelAndView model = new ModelAndView("redirect:/viewusecase");
		String role = session.getAttribute("userrole").toString();
		String usecasestatus = usecase.getStatus();
		String newstatus, msg;
		if("designer".equals(role)){
			useCaseDao.commitUseCaseChangeToTemp1(usecase);
			if (("open".equals(usecasestatus))||("closed".equals(usecasestatus))) newstatus = "readonly";
			else newstatus = "edit";
			msg="Use Case submitted!!";
		}else{			
			if (useCaseDao.checkExpiration(usecase.getUseCaseID(), session.getAttribute("useremail").toString())==false){
				useCaseDao.commitUseCaseChangeToTemp1(usecase);
				if("open".equals(usecasestatus))newstatus = "edit";
				else newstatus = "readonly";
				msg="Use Case submitted!!";
			}
			else{
				newstatus = "readonly";
				msg="Access Expired, Cannot submit use case!!";
			}
		}
		model.addObject("usecaseid", usecase.getUseCaseID());
		model.addObject("template", template);	
		model.addObject("editstatus", newstatus);
		model.addObject("msg", msg);
		return model;
	}	
	@RequestMapping(value = "editusecasetemp2", method = RequestMethod.POST)
	public ModelAndView commitUseCaseChangeToTemp2(@ModelAttribute("usecase") UseCaseTemplate2 usecase,@RequestParam("template") String template, HttpSession session){
		ModelAndView model = new ModelAndView("redirect:/viewusecase");
		String role = session.getAttribute("userrole").toString();
		String usecasestatus = usecase.getStatus();
		String newstatus, msg;
		if("designer".equals(role)){
			useCaseDao.commitUseCaseChangeToTemp2(usecase);
			if (("open".equals(usecasestatus))||("closed".equals(usecasestatus))) newstatus = "readonly";
			else newstatus = "edit";
			msg="Use Case submitted!!";
		}else{			
			if (useCaseDao.checkExpiration(usecase.getUseCaseID(), session.getAttribute("useremail").toString())==false){
				useCaseDao.commitUseCaseChangeToTemp2(usecase);
				if("open".equals(usecasestatus))newstatus = "edit";
				else newstatus = "readonly";
				msg="Use Case submitted!!";
			}
			else{
				newstatus = "readonly";
				msg="Access Expired, Cannot submit use case!!";
			}
		}
		model.addObject("usecaseid", usecase.getUseCaseID());
		model.addObject("template", template);	
		model.addObject("editstatus", newstatus);
		model.addObject("msg", msg);
		return model;		
		
	}	
	@RequestMapping(value = "compare", method = RequestMethod.POST)
	public ModelAndView compare(@RequestParam("version1") String version1,@RequestParam("version2") String version2){
		ModelAndView model = new ModelAndView("comparisonresults");
		List<ComparisonResults> list = UseCaseVersionComparator.compare(version1, version2);
		model.addObject("list", list);
		return model;		
	}
}

