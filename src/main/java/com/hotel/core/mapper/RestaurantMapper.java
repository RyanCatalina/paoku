package com.hotel.core.mapper;

import com.hotel.core.entity.Restaurant;

public interface RestaurantMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Restaurant record);

    int insertSelective(Restaurant record);

    Restaurant selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Restaurant record);

    int updateByPrimaryKey(Restaurant record);

}