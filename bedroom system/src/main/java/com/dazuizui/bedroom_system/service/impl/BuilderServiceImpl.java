package com.dazuizui.bedroom_system.service.impl;

import com.alibaba.fastjson2.JSONArray;
import com.dazuizui.bedroom_system.domain.Builder;
import com.dazuizui.bedroom_system.domain.StatusCode;
import com.dazuizui.bedroom_system.domain.StatusCodeMessage;
import com.dazuizui.bedroom_system.domain.vo.ResponseVo;
import com.dazuizui.bedroom_system.mapper.BuilderMapper;
import com.dazuizui.bedroom_system.service.BuilderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class BuilderServiceImpl implements BuilderService {

    @Autowired
    private BuilderMapper builderMapper;

    /**
     * 查看所有楼层
     * @return
     */
    @Override
    public String findAllbuilder() {
        List<Builder> allbuilder = builderMapper.findAllbuilder();
        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,allbuilder, StatusCode.OK));
    }
}
