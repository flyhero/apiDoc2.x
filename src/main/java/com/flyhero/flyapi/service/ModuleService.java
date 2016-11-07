package com.flyhero.flyapi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flyhero.flyapi.dao.ModuleMapper;
import com.flyhero.flyapi.entity.Module;

@Service
public class ModuleService{

	@Autowired
	private ModuleMapper moduleMapper;

	public List<Module> selectByProjectId(Integer projectId) {
		// TODO Auto-generated method stub
		return null;
	}

	public Module selectByPrimaryKey(Integer moduleId) {
		// TODO Auto-generated method stub
		return null;
	}

	public int insertSelective(Module record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
