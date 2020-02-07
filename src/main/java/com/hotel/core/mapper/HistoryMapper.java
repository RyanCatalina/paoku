package com.hotel.core.mapper;

import com.hotel.core.entity.History;

public interface HistoryMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(History history);

    int insertSelective(History history);

    History selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(History history);

    int updateByPrimaryKey(History history);

}