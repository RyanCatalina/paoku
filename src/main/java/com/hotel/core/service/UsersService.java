package com.hotel.core.service;

import com.hotel.core.entity.Users;

import java.util.List;
import java.util.Map;

public interface UsersService {

    //添加用户
    public int insertUser(Users users);

    //修改用户
    public int updateUser(Users users);

    //删除用户
    public int deleteUserById(Integer id);

    //根据id查询用户
    public Users selectUsersById(Integer id);

    //根据用户名查询用户
    public Users selectUserByUsername(String username);

    //获取用户分页列表
    public List<Users> selectUserListByLimit(Map<String,Object> map);

    //统计数据条数
    public int selectCounts(Integer states);

    //改变用户状态
    public int updateUserByStates(Users users);

}
