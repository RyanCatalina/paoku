package com.hotel.core.service.serviceimpl;

import com.hotel.core.entity.Users;
import com.hotel.core.mapper.UsersMapper;
import com.hotel.core.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    private UsersMapper usersMapper;

    @Override
    public int insertUser(Users users) {
        System.out.println("启用Service...insertUser");
        return usersMapper.insertSelective(users);
    }

    @CacheEvict(cacheNames = "users",key = "#users.id")
    @Override
    public int updateUser(Users users) {
        System.out.println("启用Service...updateUser");
        return usersMapper.updateByPrimaryKeySelective(users);
    }

    @CacheEvict(cacheNames = "users",key = "#id")
    @Override
    public int deleteUserById(Integer id) {
        System.out.println("启用Service...deleteUserById");
        return usersMapper.deleteByPrimaryKey(id);
    }

    @Cacheable(cacheNames = "users",key = "#id")
    @Override
    public Users selectUsersById(Integer id) {
        System.out.println("启用Service...selectUsersById");
        return usersMapper.selectByPrimaryKey(id);
    }

    @Cacheable(cacheNames = "users",key = "#username")
    @Override
    public Users selectUserByUsername(String username) {
        System.out.println("启用Service...selectUserByUsername");
        return usersMapper.selectUserByUsername(username);
    }

    @Override
    public List<Users> selectUserListByLimit(Map<String, Object> map) {
        System.out.println("启用Service...selectUserListByLimit");
        return usersMapper.selectUserListByLimit(map);
    }

    @Override
    public int selectCounts(Integer states) {
        System.out.println("启用Service...selectCounts");
        return usersMapper.selectCounts(states);
    }

    @CacheEvict(cacheNames = "users",key = "#users.id")
    @Override
    public int updateUserByStates(Users users) {
        System.out.println("启用Service...deleteUserByStates");
        return usersMapper.updateUserByStates(users);
    }

}
