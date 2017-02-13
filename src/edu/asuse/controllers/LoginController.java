package edu.asuse.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import edu.asuse.dao.ProjectDao;
import edu.asuse.dao.UserDao;
import edu.asuse.model.User;

@Controller
@SessionAttributes("username")
public class LoginController {

	@Autowired
	private UserDao userDao;
	@Autowired 
	private ProjectDao projectDao;

	@RequestMapping(value = { "/", "/login" }, method = RequestMethod.GET)
	public ModelAndView welcome() {
		ModelAndView model = new ModelAndView("login");
		return model;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("currentUser") User user)  {
		ModelAndView model = new ModelAndView();
		boolean loginStatus = userDao.isValidUser(user);
		if (loginStatus) {
			model.setViewName("projectlist");
			model.addObject("username", user.getEmail());			
			model.addObject("projectdetails", projectDao.getProjectDetails(user.getEmail()));
			return model;
		} else {
			model.setViewName("login");
			model.addObject("msg", "Invalid login, try again!!");
			return model;
		}
	}

}
