package com.flyhero.flyapi.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("forward")
public class ForwardController extends BaseController{

	/**
	 * 前往注册页
	 * @Title: goToRegister
	 * @author flyhero
	 * @date 2016年10月11日上午10:42:02
	 * @param @return    参数
	 * @return String    返回类型
	 * @throws
	 */
	@RequestMapping("register.html")
	public String goToRegister() {
		return "register";
	}
	/**
	 * 前往登录页
	 * @Title: gotoLogin
	 * @author flyhero
	 * @date 2016年10月20日下午2:58:21
	 * @param @return    参数
	 * @return String    返回类型
	 * @throws
	 */
	@RequestMapping("login.html")
	public String gotoLogin() {
		return "login";
	}
	@RequestMapping("main.html")
	public String gotoMain(){
		System.out.println("★★★★★★★★★★★");
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
		mv.setViewName("detail_project");
		return mv;
	}
	@RequestMapping("demo.html")
	public String gotoDemo1(){
		return "demo";
	}
	@RequestMapping("new_interfaces.html")
	public String gotoDemo(){
		return "new_interfaces";
	}
	@RequestMapping("data_base.html")
	public String gotoDataBase(){
		return "data_base";
	}
	
	@RequestMapping("new_database.html")
	public String gotoNewDataBase(){
		return "new_database";
	}
	@RequestMapping("detail.html")
	public String gotoDetial(){
		return "detail_interface";
	}
	@RequestMapping("list_interfaces.html")
	public String gotoListInterfaces(){
		return "list_interfaces";
	}
}
