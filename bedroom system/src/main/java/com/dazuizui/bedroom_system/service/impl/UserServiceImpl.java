package com.dazuizui.bedroom_system.service.impl;

import com.dazuizui.bedroom_system.domain.StatusCode;
import com.dazuizui.bedroom_system.domain.StatusCodeMessage;
import com.dazuizui.bedroom_system.domain.User;
import com.dazuizui.bedroom_system.domain.vo.ResponseVo;
import com.dazuizui.bedroom_system.mapper.UserMapper;
import com.dazuizui.bedroom_system.service.UserService;
import com.dazuizui.bedroom_system.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.fastjson2.JSONArray;
import org.springframework.stereotype.Service;

/**
 * 用户接口实现
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    /**
     * 用户登入
     * @param user
     * @return
     */
    @Override
    public String userLogin(User user) {
        User userInDB = userMapper.userlogin(user);
        if (userInDB == null){
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.Error,null, StatusCode.Error));
        }

        String jwt = JwtUtil.createJWT(userInDB);


        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,jwt, StatusCode.OK));
    }
}
