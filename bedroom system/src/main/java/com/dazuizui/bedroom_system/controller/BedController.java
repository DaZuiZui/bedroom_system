package com.dazuizui.bedroom_system.controller;


import com.dazuizui.bedroom_system.service.BedService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
@RestController
@CrossOrigin
@RequestMapping("/bed")
@Api(value = "床位模块",tags = {"床位模块"})
public class BedController {
    @Autowired
    private BedService bedService;

    /**
     * 通过Excal导入学生信息
     * @param file
     * @return
     */
    @ApiOperation("读入Excal获取学生数据写入数据库")
    @PostMapping("/readExcel")
    public String readExcel(@RequestParam("file") MultipartFile file,@RequestParam("builderId")Integer builderId) throws IOException {
        if (file == null){

        }
        System.err.println(builderId);
        bedService.readExcel(file);
        return "hello";
    }
}
