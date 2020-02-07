package com.hotel.core.service;

import java.util.Set;

public interface RoleService {

    //根据用户名查询用户角色
    public Set<String> selectRoleNameByUsername(String username);

}
