package com.hotel.core.mapper;

import com.hotel.core.entity.Fitness;

public interface FitnessMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Fitness fitness);

    int insertSelective(Fitness fitness);

    Fitness selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Fitness fitness);

    int updateByPrimaryKey(Fitness fitness);

}