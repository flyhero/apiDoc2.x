package com.flyhero.flyapi.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.flyhero.flyapi.dao.InterfacesMapper;
import com.flyhero.flyapi.entity.Interfaces;
import com.flyhero.flyapi.pojo.InterPojo;
import com.flyhero.flyapi.pojo.InterfacesPojo;
import com.flyhero.flyapi.pojo.ParamPojo;
import com.flyhero.flyapi.utils.DocUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class InterfaceService{

	@Autowired
	private InterfacesMapper interfacesMapper;
	
	public PageInfo<InterPojo> findInterByWhere(InterPojo interPojo){
		PageHelper.startPage(interPojo.getPageNumber(), interPojo.getPageSize());
		List<InterPojo> list=interfacesMapper.findInterByWhere(interPojo);
		PageInfo<InterPojo> pageInfo=new PageInfo<InterPojo>(list);
		return pageInfo;
	}
	
	public File findAllInter(Integer projectId) throws IOException{
		List<Interfaces> list=interfacesMapper.findAllInter(projectId);
		   List<ParamPojo> pList=new ArrayList<ParamPojo>();
		   InterfacesPojo pInterfacesPojo=new InterfacesPojo();
		   List<InterfacesPojo> pInterfacesPojos=new ArrayList<InterfacesPojo>();
		   for (Interfaces inter:list) {
			   
			   pInterfacesPojo.setInterName(inter.getInterName());
			   pInterfacesPojo.setInterDes(inter.getInterDes());
			   pInterfacesPojo.setInterUrl(inter.getInterUrl());
			   if(inter.getStatus()==0){
				   pInterfacesPojo.setStatus("可用");
			   }else{
				   pInterfacesPojo.setStatus("不可用");  
			   }
			  
			   pInterfacesPojo.setMethod(inter.getMethod());
			   pInterfacesPojo.setRequestExam(inter.getRequestExam());
			   pInterfacesPojo.setResponseParam(inter.getResponseParam());
			   pInterfacesPojo.setTrueExam(inter.getTrueExam());
			   pInterfacesPojo.setFalseExam(inter.getFalseExam());
			   
			   pList=JSONObject.parseArray(inter.getParam(), ParamPojo.class);
			   pInterfacesPojo.setParam(pList);
			   pInterfacesPojos.add(pInterfacesPojo);
		   }
		   
		   Map<String, Object> map=new HashMap<String, Object>();
		   map.put("interList", pInterfacesPojos);
		return DocUtil.createWord(map);
	}
	
	public Interfaces selectByPrimaryKey(Integer interfaceId) {
		return interfacesMapper.selectByPrimaryKey(interfaceId);
	}
	public int insertSelective(Interfaces record) {
		return interfacesMapper.insertSelective(record);
	}
	public List selectByModuleId(Integer moduleId) {
		// TODO Auto-generated method stub
		return null;
	}

}
