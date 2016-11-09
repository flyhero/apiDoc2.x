package com.flyhero.flyapi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flyhero.flyapi.dao.UserProjectMapper;
import com.flyhero.flyapi.entity.Project;
import com.flyhero.flyapi.entity.UserProject;
import com.flyhero.flyapi.pojo.TeamMemberPojo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sun.org.apache.bcel.internal.generic.NEW;

@Service
public class UserProjectService {

	@Autowired
	private UserProjectMapper userProjectMapper;
	
	
	public List<UserProject> findUserProject(Integer userId){
		return userProjectMapper.findUserProject(userId);
	}
	public PageInfo<UserProject> findUserCreate(UserProject up){
		PageHelper.startPage(up.getPageNumber(), up.getPageSize());
		List<UserProject> list=userProjectMapper.findUserCreate(up);
		PageInfo<UserProject> pageInfo=new PageInfo<UserProject>(list);
		return pageInfo;
	}
	public PageInfo<UserProject> findUserJoin(UserProject up){
		PageHelper.startPage(up.getPageNumber(), up.getPageSize());
		List<UserProject> list=userProjectMapper.findUserJoin(up);
		PageInfo<UserProject> pageInfo=new PageInfo<UserProject>(list);
		return pageInfo;
	}
	public int deleteUserProject(UserProject up){
		return userProjectMapper.deleteUserProject(up);
	}
	public List<TeamMemberPojo> findTeamMembers(UserProject up){
		return userProjectMapper.findTeamMembers(up);
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
