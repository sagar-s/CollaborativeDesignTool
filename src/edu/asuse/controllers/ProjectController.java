package edu.asuse.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import edu.asuse.dao.UserDao;
import edu.asuse.model.Project;

@Controller
public class ProjectController {
	@Autowired
	UserDao	userDao;	
	
	@RequestMapping(value = "createproject", method = RequestMethod.GET)
	public ModelAndView redirect() {
		ModelAndView model = new ModelAndView("projectcreation");
		return model;
	}
	@RequestMapping(value = "create", method = RequestMethod.POST)
	public ModelAndView createProject(@ModelAttribute("newproject") Project newproject){
		ModelAndView model = new ModelAndView("addUseCase");
		/*Project newproject = new Project();
		newproject.setName(name);
		newproject.setDescription(des);	*/	
		System.out.println(newproject.getName());
		System.out.println(newproject.getDescription());
		model.addObject("newproject", newproject);
		return model;
	}

}
