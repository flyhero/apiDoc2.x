package com.flyhero.flyapi.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flyhero.flyapi.dao.OperateLogMapper;
import com.flyhero.flyapi.entity.OperateLog;
import com.flyhero.flyapi.pojo.LogPojo;

@Service
public class LogService {
	
	@Autowired
	private OperateLogMapper operateLogMapper; 
	
	public int addLog(OperateLog log){
		return operateLogMapper.addLog(log);
	}
	
	public Map<String, Object> findLog(Integer projectId){
		List<LogPojo> list=operateLogMapper.findLog(projectId);
		List<Integer> cList =new ArrayList<Integer>();
		List<String> xList =new ArrayList<String>();
		Map<String, Object> map=new HashMap<String, Object>();
		for(LogPojo log:list){
			cList.add(log.getCount());
			xList.add(log.getXtime());
		}
		map.put("count", cList);
		map.put("xtime", xList);
		return map;
	}
}
