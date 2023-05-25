package com.dazuizui.bedroom_system.controller;

import com.dazuizui.bedroom_system.service.BuilderService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
@RequestMapping("/builder")
@Api(value = "寝室楼管理",tags = {"寝室楼管理"})
public class BuilderController {
    @Autowired
    private BuilderService builderService;
    @ApiOperation("获取全部数据名字")
    @GetMapping("/findAllbuilder")
    public String findAllbuilder(){
        return builderService.findAllbuilder();
    }

    @ApiOperation("查看性别是否合法")
    @GetMapping("/findById")
    public String findById(@RequestParam("token") String token,@RequestParam("builderId")String builderId){
        return builderService.findById(token,builderId);
    }


    @ApiOperation("查看性别是否合法")
    @GetMapping("/findByuserId")
    public String findByuserId(Long userId){
        return builderService.findByuserId(userId);
    }
}
