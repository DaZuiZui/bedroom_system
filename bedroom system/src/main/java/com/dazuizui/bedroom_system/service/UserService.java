package com.dazuizui.bedroom_system.service;

import com.dazuizui.bedroom_system.domain.User;
import org.springframework.stereotype.Service;

/**
 * 用户业务接口
 */
@Service
public interface UserService {
    /**
     * 用户登入
     * @param user
     * @return
     */
    public String userLogin(User user);
}
