package com.hotel.core.mapper;

import com.hotel.core.entity.Features;

public interface FeaturesMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Features features);

    int insertSelective(Features features);

    Features selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Features features);

    int updateByPrimaryKey(Features features);

}