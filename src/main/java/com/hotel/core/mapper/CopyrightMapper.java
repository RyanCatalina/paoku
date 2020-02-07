package com.hotel.core.mapper;

import com.hotel.core.entity.Copyright;

public interface CopyrightMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Copyright record);

    int insertSelective(Copyright record);

    Copyright selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Copyright record);

    int updateByPrimaryKey(Copyright record);

}