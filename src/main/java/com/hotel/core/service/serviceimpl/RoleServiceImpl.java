package com.hotel.core.service.serviceimpl;

import com.hotel.core.mapper.RoleMapper;
import com.hotel.core.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.Set;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Cacheable(cacheNames = "role",key = "#username")
    @Override
    public Set<String> selectRoleNameByUsername(String username) {
        return roleMapper.selectRoleNameByUsername(username);
    }

}
