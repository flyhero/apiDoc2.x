package com.flyhero.flyapi.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flyhero.flyapi.dao.InterfacesMapper;
import com.flyhero.flyapi.entity.Interfaces;
import com.flyhero.flyapi.pojo.InterPojo;
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
