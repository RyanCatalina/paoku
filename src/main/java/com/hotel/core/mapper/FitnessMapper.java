package com.hotel.core.mapper;

import com.hotel.core.entity.Fitness;

public interface FitnessMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Fitness record);

    int insertSelective(Fitness record);

    Fitness selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Fitness record);

    int updateByPrimaryKey(Fitness record);

}