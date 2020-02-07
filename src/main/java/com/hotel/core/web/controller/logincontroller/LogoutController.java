package com.hotel.core.web.controller.logincontroller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/users")
public class LogoutController {

    @RequestMapping("/logout")
    public String logout(){
        //获取当前用户
        Subject currentUser = SecurityUtils.getSubject();
        //执行登出
        currentUser.logout();
        return "/login";
    }

}
