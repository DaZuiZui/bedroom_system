package com.dazuizui.bedroom_system.service.impl;

import com.alibaba.excel.EasyExcel;
import com.dazuizui.bedroom_system.domain.StatusCode;
import com.dazuizui.bedroom_system.domain.StatusCodeMessage;
import com.dazuizui.bedroom_system.domain.User;
import com.dazuizui.bedroom_system.domain.vo.ResponseVo;
import com.dazuizui.bedroom_system.excel.UserListerner;
import com.dazuizui.bedroom_system.mapper.UserMapper;
import com.dazuizui.bedroom_system.service.UserService;
import com.dazuizui.bedroom_system.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.fastjson2.JSONArray;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * 用户接口实现
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private UserListerner userListerner;

    /**
     * 用户登入
     * @param user
     * @return
     */
    @Override
    public String userLogin(User user) {
        User userInDB = userMapper.userlogin(user);
        if (userInDB == null){
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.PasswordError,null, StatusCode.PasswordError));
        }

        String jwt = JwtUtil.createJWT(userInDB);


        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,jwt, StatusCode.OK));
    }

    /**
     * 管理员登入
     * @param user
     * @return
     */
    @Override
    public String adminLogin(User user) {
        User userInDB = userMapper.adminLogin(user);
        System.out.println(userInDB);
        if (userInDB == null){
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.PasswordError,null, StatusCode.PasswordError));
        }

        String jwt = JwtUtil.createJWT(userInDB);


        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,jwt, StatusCode.OK));
    }

    @Override
    public String readExcel(MultipartFile file) throws IOException {
        EasyExcel.read(file.getInputStream(),User.class,userListerner).sheet().doRead();
        List<User> users = userListerner.get();
        userMapper.insertUser(users);
        return null;
    }


}
