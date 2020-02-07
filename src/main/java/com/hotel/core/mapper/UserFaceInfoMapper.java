package com.hotel.core.mapper;

import com.hotel.core.entity.UserFaceInfo;

public interface UserFaceInfoMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(UserFaceInfo record);

    int insertSelective(UserFaceInfo record);

    UserFaceInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserFaceInfo record);

    int updateByPrimaryKey(UserFaceInfo record);

}