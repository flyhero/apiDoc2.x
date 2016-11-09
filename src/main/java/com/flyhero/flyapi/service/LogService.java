package com.flyhero.flyapi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flyhero.flyapi.dao.OperateLogMapper;
import com.flyhero.flyapi.entity.OperateLog;

@Service
public class LogService {
	
	@Autowired
	private OperateLogMapper operateLogMapper; 
	
	public int addLog(OperateLog log){
		return operateLogMapper.addLog(log);
	}
}
