package com.dazuizui.bedroom_system.service.impl;

import com.alibaba.excel.EasyExcel;
import com.dazuizui.bedroom_system.domain.Bed;
import com.dazuizui.bedroom_system.excel.BedListerner;
import com.dazuizui.bedroom_system.mapper.BedMapper;
import com.dazuizui.bedroom_system.service.BedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.awt.*;
import java.io.IOException;
import java.util.List;

@Service
public class BedServiceImpl implements BedService {
    @Autowired
    private BedListerner bedListerner ;
    @Autowired
    private BedMapper bedMapper;
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
}
