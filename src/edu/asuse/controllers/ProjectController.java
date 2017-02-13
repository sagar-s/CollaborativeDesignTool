package edu.asuse.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import edu.asuse.dao.UserDao;
import edu.asuse.model.Project;

@Controller
@SessionAttributes({"newproject", "username"})
public class ProjectController {
	@Autowired
	UserDao	userDao;	
	
	@RequestMapping(value = "redirect", method = RequestMethod.GET)
	public ModelAndView redirect() {
		ModelAndView model = new ModelAndView("projectcreation");
		return model;
	}
	@RequestMapping(value = "choosetemplate", method = RequestMethod.POST)
	public ModelAndView createProject(@ModelAttribute("currentProject") Project project){
		ModelAndView model = new ModelAndView("choosetemplate");	
		model.addObject("newproject", project);
		return model;
	}
	@RequestMapping(value = "addroles", method = RequestMethod.POST)
	public ModelAndView addUseCase(@RequestParam("usecasetemplate") String uct, HttpSession session) {
		ModelAndView model = new ModelAndView("AddRoles");
		((Project)session.getAttribute("newproject")).setUse_case_template(uct);
		((Project)session.getAttribute("newproject")).setCreated_by(session.getAttribute("username").toString());		
		return model;
	}
	@RequestMapping(value="addpolicy", method = RequestMethod.POST)
	public ModelAndView addPolicy(HttpSession session) {		
		ModelAndView model = new ModelAndView("addpolicy");
		return model;
	}
	@RequestMapping(value="createproject", method = RequestMethod.POST)
	public ModelAndView redirect(@RequestParam("policyname") String policy, HttpSession session) {
		((Project)session.getAttribute("newproject")).setPolicy_name(policy);
		System.out.println(((Project)session.getAttribute("newproject")).toString());
		ModelAndView model = new ModelAndView("success");
		return model;
	}
}



