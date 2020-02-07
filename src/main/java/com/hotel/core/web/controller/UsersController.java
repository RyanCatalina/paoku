package com.hotel.core.web.controller;

import com.hotel.core.entity.Users;
import com.hotel.core.service.UsersService;
import com.hotel.core.utils.BaseController;
import com.hotel.core.utils.Encryption;
import com.hotel.core.utils.JsonResult;
import com.hotel.core.utils.ToolUtil;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

@RestController
@RequestMapping("/users")
public class UsersController extends BaseController {

    @Autowired
    private UsersService usersService;

    //后台添加用户
    @RequiresRoles(value = {"admin","user"},logical = Logical.AND)
    @RequestMapping("/insertUser")
    public JsonResult insertUsers(HttpServletRequest request, HttpServletResponse response){
        JsonResult jsonResult = new JsonResult();
        System.out.println("启用Controller...insertUsers");
        try {
            String username = ToolUtil.str("username",request);
            String password = ToolUtil.str("password",request);
            String nickname = ToolUtil.str("nickname",request);
            String truename = ToolUtil.str("truename",request);
            String gender = ToolUtil.str("gender",request);
            String nation = ToolUtil.str("nation",request);
            String address = ToolUtil.str("address",request);
            Date birthday = ToolUtil.date2("birthday",request);
            String phone = ToolUtil.str("phone",request);
            String email = ToolUtil.str("email",request);
            if ((ToolUtil.equalBool(username)&&ToolUtil.equalBool(password)) == false) {
                jsonResult = JsonResult.build(FLAG_FAILED,"数据缺失");
                return jsonResult;
            }
            Users users = new Users();
            users.setUsername(username);
            users.setPassword(Encryption.build(username,password).toString());
            users.setNickname(nickname);
            users.setTruename(truename);
            users.setGender(gender);
            users.setNation(nation);
            users.setAddress(address);
            users.setBirthday(birthday);
            users.setPhone(phone);
            users.setEmail(email);
            users.setMicroblogAccountStates(0);
            users.setQqAccountStates(0);
            users.setWechatAccountStates(0);
            users.setAlipayAccountStates(0);
            users.setBaiduAccountStates(0);
            users.setRegistrationDate(new Date());
            users.setMembershipScore("");
            users.setMembershipLevel(1);
            users.setRealnameAuthenticationStates(0);
            users.setStates(1);
            int result = usersService.insertUser(users);
            if (result > 0) {
                jsonResult = JsonResult.build(FLAG_SUCCESS);
            } else {
                jsonResult = JsonResult.build(FLAG_FAILED);
            }
        } catch (DataAccessException dae) {
            dae.printStackTrace();
            jsonResult = JsonResult.build(FLAG_FAILED,"用户名已存在");
        } catch (Exception e) {
            e.printStackTrace();
            jsonResult = JsonResult.build(FLAG_FAILED,e.getMessage());
        }
        return jsonResult;
    }

    //后台修改用户
    @RequiresRoles(value = {"admin","user"},logical = Logical.AND)
    @RequestMapping("/updateUser")
    public JsonResult updateUser(HttpServletRequest request, HttpServletResponse response){
        JsonResult jsonResult = new JsonResult();
        try {
            Integer id = ToolUtil.integer("id",request);
            String username = ToolUtil.str("username",request);
            String password = ToolUtil.str("password",request);
            String nickname = ToolUtil.str("nickname",request);
            String truename = ToolUtil.str("truename",request);
            String gender = ToolUtil.str("gender",request);
            String nation = ToolUtil.str("nation",request);
            String address = ToolUtil.str("address",request);
            Date birthday = ToolUtil.date2("birthday",request);
            String phone = ToolUtil.str("phone",request);
            String email = ToolUtil.str("email",request);
            if (ToolUtil.equalBool(id) == false) {
                jsonResult = JsonResult.build(FLAG_FAILED,"id不能为空");
                return jsonResult;
            }
            Users users = usersService.selectUsersById(id);
            if (users == null) {
                jsonResult = JsonResult.build(FLAG_FAILED,"该用户不存在");
                return jsonResult;
            }
            users.setUsername(username);
            users.setPassword(Encryption.build(username,password).toString());
            users.setNickname(nickname);
            users.setTruename(truename);
            users.setGender(gender);
            users.setNation(nation);
            users.setAddress(address);
            users.setBirthday(birthday);
            users.setPhone(phone);
            users.setEmail(email);
            int result = usersService.updateUser(users);
            if (result > 0) {
                jsonResult = JsonResult.build(FLAG_SUCCESS);
            } else {
                jsonResult = JsonResult.build(FLAG_FAILED);
            }
        } catch (DataAccessException dae) {
            dae.printStackTrace();
            jsonResult = JsonResult.build(FLAG_FAILED,"用户名已存在");
        } catch (Exception e) {
            e.printStackTrace();
            jsonResult = JsonResult.build(FLAG_FAILED,e.getMessage());
        }
        return jsonResult;
    }

    //后台回收用户
    @RequiresRoles(value = {"admin","user"},logical = Logical.AND)
    @RequestMapping("/recycleUser")
    public JsonResult recycleUser(HttpServletRequest request, HttpServletResponse response){
        JsonResult jsonResult = new JsonResult();
        try {
            Integer id = ToolUtil.integer("id",request);
            if (ToolUtil.equalBool(id) == false) {
                jsonResult = JsonResult.build(FLAG_FAILED,"id不能为空");
                return jsonResult;
            }
            Users users = usersService.selectUsersById(id);
            if (users == null) {
                jsonResult = JsonResult.build(FLAG_FAILED,"该用户不存在");
                return jsonResult;
            }
            users.setStates(2);
            int result = usersService.updateUserByStates(users);
            if (result > 0) {
                jsonResult = JsonResult.build(FLAG_SUCCESS);
            } else {
                jsonResult = JsonResult.build(FLAG_FAILED);
            }
        } catch (Exception e) {
            e.printStackTrace();
            jsonResult = JsonResult.build(FLAG_FAILED,e.getMessage());
        }
        return jsonResult;
    }

    //后台锁定用户
    @RequiresRoles(value = {"admin","user"},logical = Logical.AND)
    @RequestMapping("/lockingUser")
    public JsonResult lockingUser(HttpServletRequest request, HttpServletResponse response){
        JsonResult jsonResult = new JsonResult();
        try {
            Integer id = ToolUtil.integer("id",request);
            if (ToolUtil.equalBool(id) == false) {
                jsonResult = JsonResult.build(FLAG_FAILED,"id不能为空");
                return jsonResult;
            }
            Users users = usersService.selectUsersById(id);
            if (users == null) {
                jsonResult = JsonResult.build(FLAG_FAILED,"该用户不存在");
                return jsonResult;
            }
            users.setStates(3);
            int result = usersService.updateUserByStates(users);
            if (result > 0) {
                jsonResult = JsonResult.build(FLAG_SUCCESS);
            } else {
                jsonResult = JsonResult.build(FLAG_FAILED);
            }
        } catch (Exception e) {
            e.printStackTrace();
            jsonResult = JsonResult.build(FLAG_FAILED,e.getMessage());
        }
        return jsonResult;
    }

    //后台删除用户
    @RequiresRoles(value = {"admin","user"},logical = Logical.AND)
    @RequestMapping("/deleteUser")
    public JsonResult deleteUser(HttpServletRequest request, HttpServletResponse response){
        JsonResult jsonResult = new JsonResult();
        try {
            Integer id = ToolUtil.integer("id",request);
            if (ToolUtil.equalBool(id) == false) {
                jsonResult = JsonResult.build(FLAG_FAILED,"id不能为空");
                return jsonResult;
            }
            Users users = usersService.selectUsersById(id);
            if (users == null) {
                jsonResult = JsonResult.build(FLAG_FAILED,"该用户不存在");
                return jsonResult;
            }
            int result = usersService.deleteUserById(id);
            if (result > 0) {
                jsonResult = JsonResult.build(FLAG_SUCCESS);
            } else {
                jsonResult = JsonResult.build(FLAG_FAILED);
            }
        } catch (Exception e) {
            e.printStackTrace();
            jsonResult = JsonResult.build(FLAG_FAILED,e.getMessage());
        }
        return jsonResult;
    }

}
