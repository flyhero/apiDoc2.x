package com.flyhero.flyapi.dao;

import java.util.List;

import com.flyhero.flyapi.entity.OperateLog;
import com.flyhero.flyapi.pojo.LogPojo;

public interface OperateLogMapper {
	
	List<LogPojo> findLog(Integer projectId);
	
    int deleteByPrimaryKey(Integer logId);

    int insert(OperateLog record);

    int addLog(OperateLog record);

    OperateLog selectByPrimaryKey(Integer logId);

    int updateByPrimaryKeySelective(OperateLog record);

    int updateByPrimaryKey(OperateLog record);
}