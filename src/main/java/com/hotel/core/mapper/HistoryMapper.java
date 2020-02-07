package com.hotel.core.mapper;

import com.hotel.core.entity.History;

public interface HistoryMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(History record);

    int insertSelective(History record);

    History selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(History record);

    int updateByPrimaryKey(History record);

}