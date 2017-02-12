package edu.asuse.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("newproject")
public class UseCaseController {

	@RequestMapping(value = "addusecase", method = RequestMethod.POST)
	public ModelAndView addUseCase(HttpSession session) {
		System.out.println(session.getAttribute("newproject"));
		ModelAndView model = new ModelAndView("AddRoles");
		return model;
	}
	@RequestMapping(value="addpolicy", method = RequestMethod.POST)
		public ModelAndView redirect(HttpSession session) {
			System.out.println(session.getAttribute("newproject"));
			ModelAndView model = new ModelAndView("AddPolicy");
			return model;
		}
	}

