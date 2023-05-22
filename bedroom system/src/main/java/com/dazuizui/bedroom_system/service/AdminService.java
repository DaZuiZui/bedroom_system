package com.dazuizui.bedroom_system.service;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

@Service
public interface AdminService {

    /**
     * 管理员鉴权
     * @param token
     * @return
     */
    public String isAdmin(@RequestParam("token")String token);
}
