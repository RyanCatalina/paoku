package com.hotel.core.service;

import com.hotel.core.entity.Permission;

import java.util.List;

public interface PermissionService {

    //查询所有资源权限
    public List<Permission> selectPermissionBySortAsc();

}
