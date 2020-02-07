package com.hotel.core.mapper;

import com.hotel.core.entity.Room;

public interface RoomMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Room room);

    int insertSelective(Room room);

    Room selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Room room);

    int updateByPrimaryKey(Room room);

}