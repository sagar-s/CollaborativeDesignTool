package edu.asuse.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UseCaseController {
	
	@RequestMapping(value = "redirecttotemplate", method = RequestMethod.GET)
	public ModelAndView redirectToTemplate(@RequestParam("projectname") String projectname, @RequestParam("template") String template){		
		ModelAndView model = new ModelAndView("templatetest2");
				//template);
		model.addObject("projectname", projectname);
		return model;		
	}
	@RequestMapping(value = "createusecase", method = RequestMethod.GET)
	public ModelAndView AddUseCase(@RequestParam("projectname") String projectname){		
		ModelAndView model = new ModelAndView("usecaselist");
		return model;		
	}
	
	@RequestMapping(value = "viewusecaselist", method = RequestMethod.GET)
	public ModelAndView viewAllUseCases(){
		//to be added
		return null;		
	}
	public ModelAndView viewUseCase(){
		//to be added
		return null;		
	}
	public ModelAndView compare(){
		//to be added
		return null;		
	}
}

