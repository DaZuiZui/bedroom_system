package com.dazuizui.bedroom_system.service.impl;

import com.alibaba.fastjson2.JSONArray;
import com.dazuizui.bedroom_system.domain.*;
import com.dazuizui.bedroom_system.domain.vo.ResponseVo;
import com.dazuizui.bedroom_system.mapper.BuilderMapper;
import com.dazuizui.bedroom_system.mapper.UserMapper;
import com.dazuizui.bedroom_system.service.BuilderService;
import com.dazuizui.bedroom_system.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Map;

@Service
public class BuilderServiceImpl implements BuilderService {

    @Autowired
    private BuilderMapper builderMapper;
    @Autowired
    private UserMapper userMapper;
    /**
     * 查看所有楼层
     * @return
     */
    @Override
    public String findAllbuilder() {
        List<Builder> allbuilder = builderMapper.findAllbuilder();
        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,allbuilder, StatusCode.OK));
    }

    @Override
    public String findByuserId(String token) {
        Map<String, Object> analysis = null;
        try {
            analysis = JwtUtil.analysis(token);
        } catch (Exception e) {
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.AuthenticationExpired,null, StatusCode.AuthenticationExpired));
        }
        String useridstr = (String) analysis.get("id");
        Long userId = Long.valueOf(useridstr);

        Bed byuserId = builderMapper.findByuserId(userId);
        //System.out.println(byuserId);
        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,byuserId, StatusCode.OK));
    }

    @Override
    public String findById(String token,String id) {
        Builder builder = builderMapper.findById(id);
        Map<String, Object> analysis = null;
        try {
            analysis = JwtUtil.analysis(token);
        } catch (Exception e) {
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.AuthenticationExpired,null, StatusCode.AuthenticationExpired));
        }
        String useridstr = (String) analysis.get("id");
        Long userId = Long.valueOf(useridstr);
        User byId = userMapper.findById(userId);
        System.out.println(byId.getSex() +" and "+builder.getSex());

        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,byId.getSex().equals(builder.getSex()), StatusCode.OK));
    }
}
