package com.dazuizui.bedroom_system.service.impl;

import com.alibaba.fastjson2.JSONArray;
import com.dazuizui.bedroom_system.domain.Bed;
import com.dazuizui.bedroom_system.domain.Floor;
import com.dazuizui.bedroom_system.domain.StatusCode;
import com.dazuizui.bedroom_system.domain.StatusCodeMessage;
import com.dazuizui.bedroom_system.domain.vo.ResponseVo;
import com.dazuizui.bedroom_system.mapper.FloorMapper;
import com.dazuizui.bedroom_system.service.FloorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class FloorServiceImpl implements FloorService {

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
        List<List<Bed>> res = new ArrayList<>();
        for (int i = 1; i <= maxFloor; i++) {
            List<Bed> roomName = floorMapper.getRoomName(builderId, i);
            res.add(roomName);
        }

        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,res, StatusCode.OK));
    }
}
