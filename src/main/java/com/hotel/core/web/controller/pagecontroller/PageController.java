package com.hotel.core.web.controller.pagecontroller;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

    @RequiresRoles(value = {"root"})
    @RequestMapping("/root")
    public String root(){
        return "/root";
    }

    @RequiresRoles(value = {"root","admin","user"},logical = Logical.AND)
    @RequestMapping("/rootList")
    public String rootList(){
        return "/rootList";
    }

    @RequiresRoles(value = {"admin"})
    @RequestMapping("/admin")
    public String admin(){
        return "/admin";
    }

    @RequiresRoles(value = {"admin","user"},logical = Logical.AND)
    @RequestMapping("/adminList")
    public String adminList(){
        return "/adminList";
    }

    @RequiresRoles(value = {"user"})
    @RequestMapping("/user")
    public String user(){
        return "/user";
    }

    @RequiresRoles(value = {"user"})
    @RequestMapping("/userList")
    public String userList(){
        return "/userList";
    }

}
