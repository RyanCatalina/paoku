package com.hotel.core.service.serviceimpl;

import com.hotel.core.entity.Users;
import com.hotel.core.mapper.UsersMapper;
import com.hotel.core.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    private UsersMapper usersMapper;

    @Override
    public Users selectByUsername(String username) {
        return usersMapper.selectUserByUsername(username);
    }

}
