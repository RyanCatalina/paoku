package com.hotel.core.mapper;

import com.hotel.core.entity.Room;

public interface RoomMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Room record);

    int insertSelective(Room record);

    Room selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Room record);

    int updateByPrimaryKey(Room record);

}