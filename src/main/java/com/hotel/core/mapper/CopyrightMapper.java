package com.hotel.core.mapper;

import com.hotel.core.entity.Copyright;

public interface CopyrightMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Copyright copyright);

    int insertSelective(Copyright copyright);

    Copyright selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Copyright copyright);

    int updateByPrimaryKey(Copyright copyright);

}