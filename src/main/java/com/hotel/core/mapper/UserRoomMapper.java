package com.hotel.core.mapper;

import com.hotel.core.entity.UserRoom;

public interface UserRoomMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(UserRoom record);

    int insertSelective(UserRoom record);

    UserRoom selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserRoom record);

    int updateByPrimaryKey(UserRoom record);

}