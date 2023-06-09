package com.dazuizui.bedroom_system.service.impl;

import com.alibaba.excel.EasyExcel;
import com.dazuizui.bedroom_system.domain.*;
import com.dazuizui.bedroom_system.domain.bo.GetPaginationInfoBo;
import com.dazuizui.bedroom_system.domain.vo.GetPaginationInfoVo;
import com.dazuizui.bedroom_system.domain.vo.ResponseVo;

import com.dazuizui.bedroom_system.excel.UserListerner;
import com.dazuizui.bedroom_system.mapper.BedMapper;
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
    private BedMapper bedMapper;

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

        if (userInDB == null){
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.PasswordError,null, StatusCode.PasswordError));
        }

        String jwt = JwtUtil.createJWT(userInDB);


        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,jwt, StatusCode.OK));
    }

    @Override
    public String readExcel(MultipartFile file) throws IOException {

        UserListerner userListerner = new UserListerner();
        EasyExcel.read(file.getInputStream(),User.class,userListerner).sheet().doRead();
        System.out.println(userListerner.get());
        userMapper.insertUser(userListerner.get());
        return null;
    }


    @Override
    public String GetPaginationInfo(GetPaginationInfoBo getPaginationInfoBo) {
        List<User> users = userMapper.GetPaginationInfoBo(getPaginationInfoBo);

        Long querycount = userMapper.querycount();
        GetPaginationInfoVo getPaginationInfoVo = new GetPaginationInfoVo();
        getPaginationInfoVo.setCount(querycount);
        getPaginationInfoVo.setList(users);

        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,getPaginationInfoVo, StatusCode.OK));
    }

    @Override
    public String findById(String token) {
        //获取id
        Map<String, Object> analysis = null;
        try {
            analysis = JwtUtil.analysis(token);
        } catch (Exception e) {

            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.AuthenticationExpired,null, StatusCode.AuthenticationExpired));
        }
        String useridstr = (String) analysis.get("id");
        Long id = Long.valueOf(useridstr);

        BedInfo bedInfoById = bedMapper.findBedInfoById(id);
        Integer bedId = bedInfoById.getBedId();

        Bed byId = bedMapper.fd(Long.valueOf(bedId));
        System.out.println(byId);
        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,byId,StatusCode.OK));
    }

    @Override
    public String updateStatusByUsername(String username, Integer status) {
        Long aLong = userMapper.updateStatusByUsername(username, status);
        if (aLong == 0){
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.Error,null,StatusCode.Error));
        }

        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,null,StatusCode.OK));
    }
}
