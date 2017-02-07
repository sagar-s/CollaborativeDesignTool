package edu.asuse.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.asuse.dao.UserDao;
import edu.asuse.model.User;

@Controller
public class LoginController {
	
	@Autowired
	UserDao	userDao;
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView welcome() {
		ModelAndView model = new ModelAndView("login");
		return model;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("currentUser") User user) throws SQLException{		
		ModelAndView model = new ModelAndView();
		boolean loginStatus = userDao.isValidUser(user);		
		if (loginStatus) {
			
			model.setViewName("projectlist");
			user.setProjectdetails(userDao.getProjectDetails(user.getEmailID(),user.getRole()));
			return model;
		}else{
			model.setViewName("login");
			model.addObject("msg", "Invalid login, try again!!");
			return model;
		}
	}

}
