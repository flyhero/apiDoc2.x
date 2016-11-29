package com.flyhero.flyapi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flyhero.flyapi.dao.TableInfoMapper;
import com.flyhero.flyapi.entity.TableInfo;

/**
 * 
 * @ClassName: TableInfoService 
 * @author flyhero(http://flyhero.top)
 * @date 2016年11月29日 下午1:40:20 
 *
 */
@Service
public class TableInfoService {
	
	@Autowired
	private TableInfoMapper tableInfoMapper;
	
	public int addTableInfo(TableInfo tableInfo){
		return tableInfoMapper.insertSelective(tableInfo);
	}
}
