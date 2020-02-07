package com.hotel.core.mapper;

import com.hotel.core.entity.Opinion;

public interface OpinionMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Opinion opinion);

    int insertSelective(Opinion opinion);

    Opinion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Opinion opinion);

    int updateByPrimaryKey(Opinion opinion);

}