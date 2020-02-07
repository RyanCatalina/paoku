package com.hotel.core.service;

import com.hotel.core.entity.Users;

public interface UsersService {

    //根据用户名查询用户
    public Users selectByUsername(String username);

}
