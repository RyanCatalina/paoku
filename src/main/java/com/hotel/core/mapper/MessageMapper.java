package com.hotel.core.mapper;

import com.hotel.core.entity.Message;

public interface MessageMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Message message);

    int insertSelective(Message message);

    Message selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Message message);

    int updateByPrimaryKey(Message message);

}