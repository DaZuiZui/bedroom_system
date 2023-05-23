package com.dazuizui.bedroom_system.controller;

import com.dazuizui.bedroom_system.service.FloorService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
@RequestMapping("/floor")
@Api(value = "寝室楼管理",tags = {"寝室楼管理"})
public class FloorController {

    @Autowired
    private FloorService floorService;

    @ApiOperation("获取楼层房间信息")
    @GetMapping("/getFloorList")
    public String getFloorList(@RequestParam("builderId")String builderName){
        return floorService.getFLoorList(builderName);
    }
}
