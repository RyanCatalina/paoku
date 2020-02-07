package com.hotel.core.mapper;

import com.hotel.core.entity.Role;
import org.apache.ibatis.annotations.Select;

import java.util.Set;

public interface RoleMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);

    //根据用户名查询用户角色
    @Select("SELECT r.role_name FROM users u" +
            " LEFT JOIN user_role ur ON u.id = ur.user_id" +
            " LEFT JOIN role r ON r.id = ur.role_id" +
            " WHERE u.username = #{username}")
    Set<String> selectRoleNameByUsername(String username);

}