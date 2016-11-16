package com.flyhero.flyapi.dao;

import com.flyhero.flyapi.entity.Interfaces;
import com.flyhero.flyapi.entity.InterfacesWithBLOBs;

public interface InterfacesMapper {
    int deleteByPrimaryKey(Integer interfaceId);

    int insert(Interfaces record);

    int insertSelective(Interfaces record);

    InterfacesWithBLOBs selectByPrimaryKey(Integer interfaceId);

    int updateByPrimaryKeySelective(Interfaces record);

    int updateByPrimaryKeyWithBLOBs(Interfaces record);

    int updateByPrimaryKey(Interfaces record);
}