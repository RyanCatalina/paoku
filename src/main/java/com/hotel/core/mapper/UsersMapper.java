package com.hotel.core.mapper;

import com.hotel.core.entity.Users;

public interface UsersMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);

    //根据用户名查询用户
    Users selectUserByUsername(String username);

}