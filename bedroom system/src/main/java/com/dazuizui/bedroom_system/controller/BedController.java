package com.dazuizui.bedroom_system.controller;


import com.alibaba.fastjson2.JSONArray;
import com.dazuizui.bedroom_system.domain.StatusCode;
import com.dazuizui.bedroom_system.domain.StatusCodeMessage;
import com.dazuizui.bedroom_system.domain.bo.ChooseBedBo;
import com.dazuizui.bedroom_system.domain.bo.GetNotOptionalBedBo;
import com.dazuizui.bedroom_system.domain.vo.ResponseVo;
import com.dazuizui.bedroom_system.service.BedService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.net.URLDecoder;

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
    public String readExcel(@RequestParam("file") MultipartFile file,@RequestParam("builderId")String builderId) throws IOException {
        if (file == null){

        }
       // System.err.println(builderId);
        bedService.readExcel(file);
        return "hello";
    }


    @ApiOperation("查看不可选床位")
    @PostMapping("/getNotOptionalBed")
    public String getNotOptionalBed(@RequestBody GetNotOptionalBedBo getNotOptionalBedBo){
        return bedService.getNonOptionalBeds(getNotOptionalBedBo);
    }

    /**
     * 选择床位
     * @param chooseBedBo
     * @return
     */
    @ApiOperation("选择床位")
    @PostMapping("/chooseBed")
    public String chooseBed(@RequestBody ChooseBedBo chooseBedBo){
        if (chooseBedBo == null){
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.IsNull,null, StatusCode.IsNull));
        }
        System.err.println(chooseBedBo);
        return bedService.chooseBed(chooseBedBo);
    }

    /**
     * 查看
     */
    @ApiOperation("选择床位")
    @PostMapping("/checkBed")
    public String checkBed(@RequestBody GetNotOptionalBedBo getNotOptionalBedBo){
        getNotOptionalBedBo.setBuilderName(URLDecoder.decode(getNotOptionalBedBo.getBuilderName()));
        System.err.println(getNotOptionalBedBo);
        return bedService.checkBed(getNotOptionalBedBo);
    }

    @ApiOperation("移除床选择")
    @PostMapping("/removeBedInfo")
    public  String removeBedInfo(@RequestParam("id")Long id){

        return bedService.removeBedInfo(id);
    }
}
