package com.flyhero.flyapi.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.flyhero.flyapi.entity.DataBase;
import com.flyhero.flyapi.pojo.JSONResult;
import com.flyhero.flyapi.service.DataBaseService;
import com.flyhero.flyapi.utils.Constant;
/**
 * 数据字典控制器
 * @ClassName: DataBaseController 
 * @author flyhero(http://flyhero.top)
 * @date 2016年11月28日 上午10:13:55 
 *
 */
@Controller
@RequestMapping("db")
public class DataBaseController extends BaseController{
	
	@Autowired
	private DataBaseService dataBaseService;
	
	/**
	 * 添加数据字典
	 * @Title: addDataBase 
	 * @author flyhero(http://flyhero.top)  
	 * @date 2016年11月28日 上午10:14:16 
	 * @param @param database
	 * @param @return   
	 * @return JSONResult    
	 * @throws
	 */
	@ResponseBody
	@RequestMapping("addDataBase.do")
	public String addDataBase(DataBase database){
		int flag=dataBaseService.addDataBase(database);
		return "list_database";
	}

}
