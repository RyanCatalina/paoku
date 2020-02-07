package com.hotel.core.mapper;

import com.hotel.core.entity.AccommodationRecord;

public interface AccommodationRecordMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(AccommodationRecord record);

    int insertSelective(AccommodationRecord record);

    AccommodationRecord selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AccommodationRecord record);

    int updateByPrimaryKey(AccommodationRecord record);

}