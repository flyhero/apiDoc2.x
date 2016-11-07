package com.flyhero.flyapi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flyhero.flyapi.dao.UserProjectMapper;
import com.flyhero.flyapi.entity.Project;
import com.flyhero.flyapi.entity.UserProject;

@Service
public class UserProjectService {

	@Autowired
	private UserProjectMapper userProjectMapper;
	
	
	public List<UserProject> findUserProject(Integer userId){
		return userProjectMapper.findUserProject(userId);
	}
	

	public List selectMyProject(Integer userId) {
		// TODO Auto-generated method stub
		return null;
	}

	public int deleteByPrimaryKey(Integer r1Id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insert(UserProject record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertSelective(UserProject record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public UserProject selectByPrimaryKey(Integer r1Id) {
		// TODO Auto-generated method stub
		return null;
	}

	public UserProject selectByIdAndPro(UserProject up) {
		// TODO Auto-generated method stub
		return null;
	}

	public int updateByPrimaryKeySelective(UserProject record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKey(UserProject record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
