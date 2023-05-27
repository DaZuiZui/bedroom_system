package com.dazuizui.bedroom_system.service;

import com.dazuizui.bedroom_system.domain.User;
import com.dazuizui.bedroom_system.domain.bo.GetPaginationInfoBo;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

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

    /**
     * 管理员登入
     * @param user
     * @return
     */
    public String adminLogin(User user);

    public String readExcel(MultipartFile file) throws IOException;

    public String GetPaginationInfo(GetPaginationInfoBo getPaginationInfoBo);

    public String findById(String token);

    public String updateStatusByUsername(String username,Integer status);
}
