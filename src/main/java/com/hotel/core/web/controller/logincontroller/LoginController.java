package com.hotel.core.web.controller.logincontroller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("/users")
public class LoginController {

    @RequestMapping("/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        Map<String,String> map){
        //获取当前用户
        Subject currentUser = SecurityUtils.getSubject();
        //判断当前用户是否认证
        if (!currentUser.isAuthenticated()){
            UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(username,password);
            //记住我
            usernamePasswordToken.setRememberMe(true);
            try {
                currentUser.login(usernamePasswordToken);
            } catch (UnknownAccountException uae) {
                map.put("msg","账户不存在");
                return "/login";
            } catch (IncorrectCredentialsException ice) {
                map.put("msg","密码错误");
                return "/login";
            } catch (LockedAccountException lae) {
                map.put("msg","账户被锁定");
                return "/login";
            } catch (AuthenticationException ae) {

            }
        }
        return "/success";
    }

}
