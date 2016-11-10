package com.flyhero.flyapi.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.flyhero.flyapi.entity.Module;
import com.flyhero.flyapi.pojo.JSONResult;
import com.flyhero.flyapi.service.ModuleService;
import com.flyhero.flyapi.utils.Constant;

/**
 * 项目模块控制器
 * @ClassName: ModuleController 
 * @author flyhero(http://flyhero.top)
 * @date 2016年11月7日 下午3:34:34 
 *
 */
@Controller
@RequestMapping("module")
public class ModuleController extends BaseController{

	@Autowired
	private ModuleService moduleService;
	
	/**
	 * 添加模块
	 * @Title: addModule  
	 * @author flyhero(http://flyhero.top)
	 * @date 2016年11月10日 下午12:20:47 
	 * @param @param module
	 * @param @return    
	 * @return JSONResult    返回类型 
	 * @throws
	 */
	@RequestMapping("addModule.do")
	@ResponseBody
	public JSONResult addModule(Module module){
		int flag=moduleService.insertSelective(module);
		if(flag != 0){
			return new JSONResult(Constant.MSG_OK, Constant.CODE_200);
		}
		return new JSONResult(Constant.MSG_ERROR, Constant.CODE_200);
	}
	
	/**
	 * 删除模块
	 * @Title: deleteModule  
	 * @author flyhero(http://flyhero.top)
	 * @date 2016年11月10日 下午1:10:00 
	 * @param @param module
	 * @param @return    
	 * @return JSONResult    返回类型 
	 * @throws
	 */
	@RequestMapping("deleteModule.do")
	@ResponseBody
	public JSONResult deleteModule(Module module){
		int flag=moduleService.updateByPrimaryKeySelective(module);
		if(flag != 0){
			return new JSONResult(Constant.MSG_OK, Constant.CODE_200);
		}
		return new JSONResult(Constant.MSG_ERROR, Constant.CODE_200);
	}
	
	/**
	 * 更新模块
	 * @Title: updateModule  
	 * @author flyhero(http://flyhero.top)
	 * @date 2016年11月10日 下午1:28:08 
	 * @param @param module
	 * @param @return    
	 * @return JSONResult    返回类型 
	 * @throws
	 */
	@RequestMapping("updateModule.do")
	@ResponseBody
	public JSONResult updateModule(Module module){
		int flag=moduleService.updateByPrimaryKeySelective(module);
		if(flag != 0){
			return new JSONResult(Constant.MSG_OK, Constant.CODE_200);
		}
		return new JSONResult(Constant.MSG_ERROR, Constant.CODE_200);
	}
	
	/**
	 * 获取项目模块
	 * @Title: findModule  
	 * @author flyhero(http://flyhero.top)
	 * @date 2016年11月10日 下午1:33:38 
	 * @param @param module
	 * @param @return    
	 * @return JSONResult    返回类型 
	 * @throws
	 */
	@RequestMapping("findModule.do")
	@ResponseBody
	public JSONResult findModule(Module module){
		List<Module> list=moduleService.findModule(module.getProjectId());
		if(list != null){
			return new JSONResult(Constant.MSG_OK, Constant.CODE_200,list);
		}
		return new JSONResult(Constant.MSG_ERROR, Constant.CODE_200,list);
	}
	
}
