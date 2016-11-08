package com.flyhero.flyapi.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("forward")
public class ForwardController extends BaseController{

	@RequestMapping("main.html")
	public String gotoMain(){
		return "main";
	}
	@RequestMapping("druid.html")
	public String gotoDruid(){
		return "druid";
	}
	@RequestMapping("projects.html")
	public String gotoProject(){
		return "projects";
	}
	@RequestMapping("newProject.html")
	public String newProjects(){
		return "new_project";
	}
	
	@RequestMapping("listCreatedProject.html")
	public String gotoCreatedProject(){
		return "list_createdproject";
	}
	@RequestMapping("project_detail.html")
	public ModelAndView gotoProjectDetail(Integer projectId,Integer upId){
		mv.addObject("projectId", projectId);
		mv.addObject("upId", upId);
		mv.setViewName("project_detail");
		return mv;
	}
}
