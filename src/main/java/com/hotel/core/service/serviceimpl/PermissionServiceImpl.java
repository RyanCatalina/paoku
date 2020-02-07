package com.hotel.core.service.serviceimpl;

import com.hotel.core.entity.Permission;
import com.hotel.core.mapper.PermissionMapper;
import com.hotel.core.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PermissionServiceImpl implements PermissionService {

    @Autowired
    private PermissionMapper permissionMapper;

    @Override
    public List<Permission> selectPermissionBySortAsc() {
        return permissionMapper.selectPermissionBySortAsc();
    }

}
