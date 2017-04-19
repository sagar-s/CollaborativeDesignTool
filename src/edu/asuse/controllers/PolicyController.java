package edu.asuse.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import edu.asuse.dao.PolicyDao;

@Controller
public class PolicyController {
	
	@Autowired
	PolicyDao policyDao;
	
	@RequestMapping(value = "addcustompolicy", method = RequestMethod.POST)
	public ModelAndView addcustompolicy(@RequestParam(value="name", required=false) String policyname, @RequestParam(value="description", required=false) String description) {				
		ModelAndView model = new ModelAndView("addpolicy");		
		policyDao.addPolicy(policyname, description);
		return model;		
	}
}
