package com.flyhero.flyapi.dao;

import com.flyhero.flyapi.entity.DataBase;

public interface DataBaseMapper {
    int deleteByPrimaryKey(Integer dbId);

    int insert(DataBase record);

    int insertSelective(DataBase record);

    DataBase selectByPrimaryKey(Integer dbId);
    
    DataBase findDataBase(Integer userId);

    int updateByPrimaryKeySelective(DataBase record);

    int updateByPrimaryKey(DataBase record);
}