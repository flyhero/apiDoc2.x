package com.flyhero.flyapi.dao;

import com.flyhero.flyapi.entity.Interfaces;
import com.flyhero.flyapi.entity.InterfacesWithBLOBs;

public interface InterfacesMapper {
    int deleteByPrimaryKey(Integer interfaceId);

    int insert(InterfacesWithBLOBs record);

    int insertSelective(InterfacesWithBLOBs record);

    InterfacesWithBLOBs selectByPrimaryKey(Integer interfaceId);

    int updateByPrimaryKeySelective(InterfacesWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(InterfacesWithBLOBs record);

    int updateByPrimaryKey(Interfaces record);
}