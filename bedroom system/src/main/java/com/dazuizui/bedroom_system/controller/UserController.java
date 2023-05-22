package com.dazuizui.bedroom_system.controller;

import com.dazuizui.bedroom_system.domain.User;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
@RequestMapping("/user")
@Api(value = "用户模版",tags = {"用户模版"})
public class UserController {
    /**
     * 用户登入
     * @param user
     * @return
     */
    @ApiOperation("用户登入")
    @PostMapping("登入")
    public String userlogin(@RequestBody User user){

        return "";
    }
}
