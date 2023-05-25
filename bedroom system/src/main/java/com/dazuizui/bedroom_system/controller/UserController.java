package com.dazuizui.bedroom_system.controller;

import com.alibaba.fastjson2.JSONArray;
import com.dazuizui.bedroom_system.domain.StatusCode;
import com.dazuizui.bedroom_system.domain.StatusCodeMessage;
import com.dazuizui.bedroom_system.domain.User;
import com.dazuizui.bedroom_system.domain.bo.GetPaginationInfoBo;
import com.dazuizui.bedroom_system.domain.vo.ResponseVo;
import com.dazuizui.bedroom_system.mapper.UserMapper;
import com.dazuizui.bedroom_system.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import javafx.geometry.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
@CrossOrigin
@RequestMapping("/user")
@Api(value = "用户模版",tags = {"用户模版"})
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private UserMapper userMapper;

    /**
     * 用户登入
     * @param user
     * @return
     */
    @ApiOperation("用户登入")
    @PostMapping("/userlogin")
    public String userlogin(@RequestBody User user){
        if (user == null){
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.IsNull,null, StatusCode.IsNull));
        }

        return userService.userLogin(user);
    }

    /**
     * 管理员登入
     * @param user
     * @return
     */
    @ApiOperation("管理员登入")
    @PostMapping("/admin/userlogin")
    public String adminlogin(@RequestBody User user){
        if (user == null){
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.IsNull,null, StatusCode.IsNull));
        }

        return userService.adminLogin(user);
    }

    /**
     * 通过Excal导入学生信息
     * @param file
     * @return
     */
    @ApiOperation("读入Excal获取学生数据写入数据库")
    @PostMapping("/readExcel")
    public String readExcel(MultipartFile file) throws IOException{
        userService.readExcel(file);
        return "hello";
    }

    @ApiOperation("分页获取学生数据")
    @PostMapping("/GetPaginationInfoBo")
    public String GetPaginationInfo(@RequestBody GetPaginationInfoBo getPaginationInfoBo){
        return userService.GetPaginationInfo(getPaginationInfoBo);
    }


    @ApiOperation("查询学生信息")
    @GetMapping("/findById")
    public String findById(@RequestParam("token")String token){

        return userService.findById(token);
    }
}
