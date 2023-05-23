package com.dazuizui.bedroom_system.service.impl;

import com.alibaba.excel.EasyExcel;
import com.alibaba.fastjson2.JSONArray;
import com.dazuizui.bedroom_system.domain.*;
import com.dazuizui.bedroom_system.domain.bo.GetNotOptionalBedBo;
import com.dazuizui.bedroom_system.domain.vo.GetNonOptionalBedsVo;
import com.dazuizui.bedroom_system.domain.vo.ResponseVo;
import com.dazuizui.bedroom_system.excel.BedListerner;
import com.dazuizui.bedroom_system.mapper.BedMapper;
import com.dazuizui.bedroom_system.mapper.UserMapper;
import com.dazuizui.bedroom_system.service.BedService;
import com.dazuizui.bedroom_system.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.awt.*;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BedServiceImpl implements BedService {
    @Autowired
    private BedListerner bedListerner ;
    @Autowired
    private BedMapper bedMapper;
    @Autowired
    private UserMapper userMapper;

    @Override
    public String readExcel(MultipartFile file) throws IOException {
        EasyExcel.read(file.getInputStream(),Bed.class,bedListerner).sheet().doRead();
        //获取数据
        List<Bed> list = bedListerner.list;
        //写入数据库

        Long aLong = bedMapper.insertBed(list);


        bedListerner.clear();
        return null;
    }

    @Override
    public String getNonOptionalBeds(GetNotOptionalBedBo bedBo) {
        bedBo.setBuilderName(URLDecoder.decode(bedBo.getBuilderName()));
        //获取已经被选的床位
        List<BedInfo> nonOptionalBeds = bedMapper.getNonOptionalBeds(bedBo);

        //查看该生是否有选床资格
        Map<String, Object> analysis = null;
        try {
            analysis = JwtUtil.analysis(bedBo.getToken());
        } catch (Exception e) {

            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.AuthenticationExpired,null, StatusCode.AuthenticationExpired));
        }
        String useridstr = (String) analysis.get("id");
        Long id = Long.valueOf(useridstr);
        User byId = userMapper.findById(id);
        Boolean b = byId.getStatus() == 0 ? Boolean.FALSE : Boolean.TRUE;
        GetNonOptionalBedsVo getNonOptionalBedsVo = new GetNonOptionalBedsVo();
        getNonOptionalBedsVo.setNonOptionalBeds(nonOptionalBeds);
        getNonOptionalBedsVo.setStatus(b);

        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,getNonOptionalBedsVo, StatusCode.OK));
    }
}
