package edu.asuse.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.asuse.dao.UserDao;
import edu.asuse.model.ProjectDetails;


@Controller
public class ProjectController {
	@Autowired
	UserDao	userDao;
	
	
	
	@RequestMapping(value = "createproject", method = RequestMethod.GET)
	public ModelAndView welcome() {
		ModelAndView model = new ModelAndView("projectcreation");
		return model;
	}
	@RequestMapping(value = "create", method = RequestMethod.POST)
	public ModelAndView createProject(){
		ModelAndView model = new ModelAndView("success");
		return model;
	}

}
