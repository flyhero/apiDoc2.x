package com.flyhero.flyapi.dao;

import com.flyhero.flyapi.entity.OperateLog;

public interface OperateLogMapper {
    int deleteByPrimaryKey(Integer logId);

    int insert(OperateLog record);

    int addLog(OperateLog record);

    OperateLog selectByPrimaryKey(Integer logId);

    int updateByPrimaryKeySelective(OperateLog record);

    int updateByPrimaryKey(OperateLog record);
}