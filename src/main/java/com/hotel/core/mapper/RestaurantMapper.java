package com.hotel.core.mapper;

import com.hotel.core.entity.Restaurant;

public interface RestaurantMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Restaurant restaurant);

    int insertSelective(Restaurant restaurant);

    Restaurant selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Restaurant restaurant);

    int updateByPrimaryKey(Restaurant restaurant);

}