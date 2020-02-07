package com.hotel.core.mapper;

import com.hotel.core.entity.Background;

public interface BackgroundMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Background record);

    int insertSelective(Background record);

    Background selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Background record);

    int updateByPrimaryKey(Background record);

}