package com.dazuizui.bedroom_system.controller;


import com.alibaba.fastjson2.JSONArray;
import com.dazuizui.bedroom_system.domain.StatusCode;
import com.dazuizui.bedroom_system.domain.StatusCodeMessage;
import com.dazuizui.bedroom_system.domain.vo.ResponseVo;
import com.dazuizui.bedroom_system.mapper.AdminMapper;
import com.dazuizui.bedroom_system.service.AdminService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
@RequestMapping("/admin")
@Api(value = "管理员操作页面",tags = {"管理员操作页面"})
public class AdminController {
    @Autowired
    private AdminService adminMapper;
    /**
     * 管理员鉴权
     * @param token
     * @return
     */
    @ApiOperation("管理员鉴权")
    @GetMapping("/isAdmin")
    public String isAdmin(@RequestParam("token")String token){
        if (token == null){
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.IsNull,null, StatusCode.IsNull));
        }
        return adminMapper.isAdmin(token);
    }

}
