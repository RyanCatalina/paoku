package com.hotel.core.mapper;

import com.hotel.core.entity.Users;

import java.util.List;
import java.util.Map;

public interface UsersMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Users users);

    int insertSelective(Users users);

    Users selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Users users);

    int updateByPrimaryKey(Users users);

    //根据用户名查询用户
    Users selectUserByUsername(String username);

    //获取用户分页列表
    List<Users> selectUserListByLimit(Map<String,Object> map);

    //统计数据条数
    int selectCounts(Integer states);

    //改变用户状态
    int updateUserByStates(Users users);

}