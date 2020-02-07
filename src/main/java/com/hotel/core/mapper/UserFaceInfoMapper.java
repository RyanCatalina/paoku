package com.hotel.core.mapper;

import com.hotel.core.entity.UserFaceInfo;

public interface UserFaceInfoMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(UserFaceInfo userFaceInfo);

    int insertSelective(UserFaceInfo userFaceInfo);

    UserFaceInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserFaceInfo userFaceInfo);

    int updateByPrimaryKey(UserFaceInfo userFaceInfo);

}