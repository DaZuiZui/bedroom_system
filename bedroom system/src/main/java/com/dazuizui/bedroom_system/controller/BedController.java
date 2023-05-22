package com.dazuizui.bedroom_system.controller;


import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

public class BedController {
    /**
     * 通过Excal导入学生信息
     * @param file
     * @return
     */
    @ApiOperation("读入Excal获取学生数据写入数据库")
    @PostMapping("/readExcel")
    public String readExcel(@RequestParam("file") MultipartFile file) throws IOException {
        //gsCreditUserService.readExcel(file);
        return "hello";
    }
}
