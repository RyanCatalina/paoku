package com.hotel.core.mapper;

import com.hotel.core.entity.Features;

public interface FeaturesMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Features record);

    int insertSelective(Features record);

    Features selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Features record);

    int updateByPrimaryKey(Features record);

}