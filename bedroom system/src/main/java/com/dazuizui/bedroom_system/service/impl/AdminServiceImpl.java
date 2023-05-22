package com.dazuizui.bedroom_system.service.impl;

import com.alibaba.fastjson2.JSONArray;
import com.dazuizui.bedroom_system.domain.StatusCode;
import com.dazuizui.bedroom_system.domain.StatusCodeMessage;
import com.dazuizui.bedroom_system.domain.User;
import com.dazuizui.bedroom_system.domain.vo.ResponseVo;
import com.dazuizui.bedroom_system.mapper.AdminMapper;
import com.dazuizui.bedroom_system.service.AdminService;
import com.dazuizui.bedroom_system.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;
    /**
     * 管理员鉴权
     * @param token
     * @return
     */
    @Override
    public String isAdmin(String token) {
        Map<String, Object> analysis = null;
        try {
            analysis = JwtUtil.analysis(token);
        } catch (Exception e) {
            e.printStackTrace();
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.AdminAuthenticationExpired,null, StatusCode.AdminAuthenticationExpired));
        }
        String id = (String) analysis.get("id");
        Long userid = Long.valueOf(id);

        User byIdAndRole = adminMapper.findByIdAndRole(userid, 1);
        System.err.println(byIdAndRole);
        if (byIdAndRole == null){
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.PasswordError,null, StatusCode.PasswordError));
        }

        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,null, StatusCode.OK));
    }
}
