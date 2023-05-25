package com.dazuizui.bedroom_system.service.impl;

import com.alibaba.fastjson2.JSONArray;
import com.dazuizui.bedroom_system.domain.*;
import com.dazuizui.bedroom_system.domain.vo.ResponseVo;
import com.dazuizui.bedroom_system.mapper.FloorMapper;
import com.dazuizui.bedroom_system.mapper.UserMapper;
import com.dazuizui.bedroom_system.service.FloorService;
import com.dazuizui.bedroom_system.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class FloorServiceImpl implements FloorService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private FloorMapper floorMapper;

    /**
     * get room in fllor
     * @param builderId
     * @return
     */
    @Override
    public String getFLoorList(String builderId) {
        //查看最大楼层
        Integer maxFloor = floorMapper.getMaxFloor(builderId);
        if (maxFloor == null) maxFloor = 0;
        List<List<Bed>> res = new ArrayList<>();
        for (int i = 1; i <= maxFloor; i++) {
            List<Bed> roomName = floorMapper.getRoomName(builderId, i);
            res.add(roomName);
        }

        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,res, StatusCode.OK));
    }

    @Override
    public String studentGetFloorList(String token, String builderName) {
        Map<String, Object> analysis = null;
        try {
            analysis = JwtUtil.analysis(token);
        } catch (Exception e) {

            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.AuthenticationExpired,null, StatusCode.AuthenticationExpired));
        }
        String useridstr = (String) analysis.get("id");
        Long id = Long.valueOf(useridstr);
        User byId = userMapper.findById(id);
        //获取参数
        String mojar = byId.getMojar();
        String classId = byId.getClassId();

        //查看最大楼层
        Integer maxFloor = floorMapper.studentGetMaxFloor(builderName,mojar,classId);
        if (maxFloor == null) maxFloor = 0;
        List<List<Bed>> res = new ArrayList<>();
        for (int i = 1; i <= maxFloor; i++) {
            List<Bed> roomName = floorMapper.studentGetFloor(builderName,mojar,classId,i);
            res.add(roomName);
        }

        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,res, StatusCode.OK));
    }
}
