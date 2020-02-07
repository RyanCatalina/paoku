package com.hotel.core.mapper;

import com.hotel.core.entity.Permission;

import java.util.List;

public interface PermissionMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Permission record);

    int insertSelective(Permission record);

    Permission selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Permission record);

    int updateByPrimaryKey(Permission record);

    //查询所有资源权限
    List<Permission> selectPermissionBySortAsc();

}