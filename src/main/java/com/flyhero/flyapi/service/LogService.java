package com.flyhero.flyapi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flyhero.flyapi.dao.OperateLogMapper;

@Service
public class LogService {
	
	@Autowired
	private OperateLogMapper operateLogMapper; 
}
