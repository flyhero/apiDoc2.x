package com.flyhero.flyapi.dao;

import java.util.List;
import java.util.Map;

import com.flyhero.flyapi.entity.Interfaces;
import com.flyhero.flyapi.entity.InterfacesWithBLOBs;
import com.flyhero.flyapi.pojo.InterPojo;

public interface InterfacesMapper {
	
	List<InterPojo> findInterByWhere(InterPojo interPojo);
	
    int deleteByPrimaryKey(Integer interfaceId);

    int insert(Interfaces record);

    int insertSelective(Interfaces record);

    InterfacesWithBLOBs selectByPrimaryKey(Integer interfaceId);

    int updateByPrimaryKeySelective(Interfaces record);

    int updateByPrimaryKeyWithBLOBs(Interfaces record);

    int updateByPrimaryKey(Interfaces record);
}