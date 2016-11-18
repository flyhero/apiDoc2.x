package com.flyhero.flyapi.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flyhero.flyapi.dao.InterfacesMapper;
import com.flyhero.flyapi.entity.Interfaces;
import com.flyhero.flyapi.pojo.InterPojo;

@Service
public class InterfaceService{

	@Autowired
	private InterfacesMapper interfacesMapper;
	
	public List<InterPojo> findInterByWhere(InterPojo interPojo){
		return interfacesMapper.findInterByWhere(interPojo);
	}
	
	public Interfaces selectByPrimaryKey(Integer interfaceId) {
		// TODO Auto-generated method stub
		return null;
	}
	public int insertSelective(Interfaces record) {
		return interfacesMapper.insertSelective(record);
	}
	public List selectByModuleId(Integer moduleId) {
		// TODO Auto-generated method stub
		return null;
	}

}
