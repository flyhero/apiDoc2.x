package com.flyhero.flyapi.web;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flyhero.flyapi.pojo.JSONResult;
import com.flyhero.flyapi.service.LogService;
import com.flyhero.flyapi.utils.Constant;

/**
 * 操作日志控制器
 * @ClassName: LogController 
 * @author flyhero(http://flyhero.top)
 * @date 2016年11月15日 下午2:30:08 
 *
 */
@Controller
@RequestMapping("log")
public class LogController extends BaseController{

	@Autowired
	private LogService logService;
	
	@RequestMapping("findLog.do")
	public JSONResult findLogByProjectId(Integer projectId){
		Map<String, Object> map=logService.findLog(projectId);
		return new JSONResult(Constant.MSG_OK, Constant.CODE_200, map);
	}
}
