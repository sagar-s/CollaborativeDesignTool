package edu.asuse.controllers;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import edu.asuse.dao.ProjectDao;
import edu.asuse.model.Project;
import edu.asuse.model.User;

@Controller
@SessionAttributes({"newproject", "username", "collaborators","useremail"})
public class ProjectController {
	@Autowired
	ProjectDao projectDao;
	
	@RequestMapping(value="viewprojectlist", method = RequestMethod.POST)
	public ModelAndView getProjectList(HttpSession session){
		ModelAndView model = new ModelAndView("projectlist");
		model.addObject("projectdetails", projectDao.getProjectDetails(session.getAttribute("useremail").toString()));
		return model;
	}

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
	@RequestMapping(value = "closeproject", method = RequestMethod.POST)
	public ModelAndView closeproject(@ModelAttribute("projectname") String projectname){
		
		projectDao.closeProject(projectname);
		ModelAndView model = new ModelAndView("projectlist");	
		return model;
	}
	@RequestMapping(value = "addroles", method = RequestMethod.POST)
	public ModelAndView addUseCase(@RequestParam("usecasetemplate") String uct, HttpSession session) {
		ModelAndView model = new ModelAndView("AddRoles");
		((Project)session.getAttribute("newproject")).setUse_case_template(uct);
		((Project)session.getAttribute("newproject")).setCreated_by(session.getAttribute("useremail").toString());	
		Map<String,List<String>> collaborators = projectDao.getCollaborators();
		model.addObject("devMgrsList",collaborators.get("development-manager"));
		model.addObject("solnMgrsList",collaborators.get("solution-manager"));
		model.addObject("archsList",collaborators.get("architect"));
		model.addObject("qaList",collaborators.get("qa"));
		return model;
	}
	@RequestMapping(value="addpolicy", method = RequestMethod.POST)
	public ModelAndView addPolicy(@RequestParam("collaborators") List<String> persons, HttpSession session) {		
		ModelAndView model = new ModelAndView("addpolicy");
		model.addObject("collaborators", persons);
		return model;
	}
	@RequestMapping(value="createproject", method = RequestMethod.POST)
	public ModelAndView redirect(@RequestParam("policyname") String policy, HttpSession session) {
		Project project = (Project)session.getAttribute("newproject");
		String projectname = project.getName();
		String currentUser = (String)session.getAttribute("useremail");
		project.setPolicy_name(policy);
		System.out.println(project.toString());
		projectDao.addProject(project);
		@SuppressWarnings("unchecked")
		List<String> collaborators = (List<String> )session.getAttribute("collaborators");
		for(String collaborator: collaborators)
			projectDao.addCollaborators(projectname, collaborator);
		ModelAndView model = new ModelAndView("projectlist");
		model.addObject("projectdetails", projectDao.getProjectDetails(currentUser));
		return model;
	}
}



