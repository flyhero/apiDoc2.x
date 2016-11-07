package com.flyhero.flyapi.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("forward")
public class ForwardController extends BaseController{

	@RequestMapping("druid.html")
	public String gotoDruid(){
		return "druid";
	}
	@RequestMapping("projects.html")
	public String gotoProject(){
		return "projects";
	}
}
