package com.dazuizui.bedroom_system.controller;

import com.dazuizui.bedroom_system.service.BuilderService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
}
