package com.hotel.core.mapper;

import com.hotel.core.entity.Permission;

import java.util.List;

public interface PermissionMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Permission permission);

    int insertSelective(Permission permission);

    Permission selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Permission permission);

    int updateByPrimaryKey(Permission permission);

    //查询所有资源权限
    List<Permission> selectPermissionBySortAsc();

}