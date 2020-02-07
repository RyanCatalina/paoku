package com.hotel.core.mapper;

import com.hotel.core.entity.UserProduct;

public interface UserProductMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(UserProduct userProduct);

    int insertSelective(UserProduct userProduct);

    UserProduct selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserProduct userProduct);

    int updateByPrimaryKey(UserProduct userProduct);

}