package com.flyhero.flyapi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flyhero.flyapi.dao.DataBaseMapper;
import com.flyhero.flyapi.entity.DataBase;

@Service
public class DataBaseService {
	
	@Autowired
	private DataBaseMapper dataBaseMapper;
	
	public int addDataBase(DataBase dataBase){
		return dataBaseMapper.insertSelective(dataBase);
	}

}
