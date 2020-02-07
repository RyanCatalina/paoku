package com.hotel.core.web.controller.logincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    //未认证时访问的页面
    @RequestMapping("/login")
    public String login(){
        return "/login";
    }

    //认证成功后的页面
    @RequestMapping("/success")
    public String success(){
        return "/success";
    }

    //无权限页面
    @RequestMapping("/unauthorized")
    public String unauthorized(){
        return "/unauthorized";
    }

}
