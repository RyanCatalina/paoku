package com.hotel.core.mapper;

import com.hotel.core.entity.RolePermission;

public interface RolePermissionMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(RolePermission rolePermission);

    int insertSelective(RolePermission rolePermission);

    RolePermission selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RolePermission rolePermission);

    int updateByPrimaryKey(RolePermission rolePermission);

}