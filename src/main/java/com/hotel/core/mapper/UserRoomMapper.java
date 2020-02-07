package com.hotel.core.mapper;

import com.hotel.core.entity.UserRoom;

public interface UserRoomMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(UserRoom userRoom);

    int insertSelective(UserRoom userRoom);

    UserRoom selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserRoom userRoom);

    int updateByPrimaryKey(UserRoom userRoom);

}