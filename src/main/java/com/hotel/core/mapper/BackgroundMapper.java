package com.hotel.core.mapper;

import com.hotel.core.entity.Background;

public interface BackgroundMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Background background);

    int insertSelective(Background background);

    Background selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Background background);

    int updateByPrimaryKey(Background background);

}