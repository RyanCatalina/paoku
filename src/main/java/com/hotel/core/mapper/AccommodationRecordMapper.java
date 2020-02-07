package com.hotel.core.mapper;

import com.hotel.core.entity.AccommodationRecord;

public interface AccommodationRecordMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(AccommodationRecord accommodationRecord);

    int insertSelective(AccommodationRecord accommodationRecord);

    AccommodationRecord selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AccommodationRecord accommodationRecord);

    int updateByPrimaryKey(AccommodationRecord accommodationRecord);

}