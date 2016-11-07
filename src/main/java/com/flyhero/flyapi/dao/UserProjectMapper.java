package com.flyhero.flyapi.dao;

import java.util.List;

import com.flyhero.flyapi.entity.Project;
import com.flyhero.flyapi.entity.UserProject;

public interface UserProjectMapper {
	
	List<UserProject> findUserProject(Integer userId);
	
    int deleteByPrimaryKey(Integer upId);

    int insert(UserProject record);

    int insertSelective(UserProject record);

    UserProject selectByPrimaryKey(Integer upId);

    int updateByPrimaryKeySelective(UserProject record);

    int updateByPrimaryKey(UserProject record);
}