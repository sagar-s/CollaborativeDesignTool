package edu.asuse.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import edu.asuse.dao.UserDao;
import edu.asuse.model.User;

@Controller
@SessionAttributes({"userrole","useremail"})
public class LoginController {

	@Autowired
	private UserDao userDao;

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
			model.addObject("useremail", user.getEmail());
			model.addObject("userrole", user.getRole());
			model.setViewName("redirect:/viewprojectlist");
		} else {
			model.setViewName("login");
			model.addObject("msg", "Invalid login, try again!!");
		}
		return model;
	}
	@RequestMapping(value="/logout", method = RequestMethod.POST)
	public ModelAndView logout(HttpSession session){
		ModelAndView model = new ModelAndView("login");
		session.invalidate();
		model.addObject("msg", "You've been successfully logged out!!");
		return model;		
	}
	@RequestMapping(value="/test", method = RequestMethod.GET)
	public ModelAndView test(){
		ModelAndView model = new ModelAndView("sample");
		return model;		
	}
}
