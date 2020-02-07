package com.hotel.core.web.controller.uploadcontroller;

import com.hotel.core.entity.Users;
import com.hotel.core.service.UsersService;
import com.hotel.core.utils.BaseController;
import com.hotel.core.utils.JsonResult;
import com.hotel.core.utils.ToolUtil;
import com.hotel.core.utils.uploadfile.FileUploadTool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController("uploadUsersController")
@RequestMapping("/upload")
public class UsersController extends BaseController {

    @Autowired
    private UsersService usersService;

    //上传用户头像
    @RequestMapping(value = "/uploadAvatar",method = {RequestMethod.POST,RequestMethod.GET})
    public JsonResult uploadAvatar(@RequestParam(value = "file",required = false) MultipartFile multipartFile,
                                   HttpServletRequest request, HttpServletResponse response){
        JsonResult jsonResult = new JsonResult();
        String msg = "";
        String url;
        FileUploadTool fileUploadTool = new FileUploadTool();
        try {
            Integer id = ToolUtil.integer("id",request);
            if (ToolUtil.equalBool(id) == false) {
                jsonResult = JsonResult.build(FLAG_FAILED,"数据缺失");
                return jsonResult;
            }
            Users users = usersService.selectUsersById(id);
            if (users == null) {
                jsonResult = JsonResult.build(FLAG_FAILED,"该用户不存在");
                return jsonResult;
            }
            url = fileUploadTool.createFile(multipartFile,request);
            System.out.println(url);
            if (url != null) {
                msg = "success";
            } else {
                msg = "fail";
            }
            users.setAvatar(url);
            int result = usersService.updateUser(users);
            if (result > 0) {
                jsonResult = JsonResult.build(FLAG_SUCCESS,msg);
            } else {
                jsonResult = JsonResult.build(FLAG_FAILED,msg);
            }
        } catch (Exception e) {
            e.printStackTrace();
            jsonResult = JsonResult.build(FLAG_FAILED,e.getMessage());
        }
        return jsonResult;
    }

}
