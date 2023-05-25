package com.dazuizui.bedroom_system.service;

import com.dazuizui.bedroom_system.domain.BedInfo;
import com.dazuizui.bedroom_system.domain.Builder;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BuilderService {
    public String findAllbuilder();
    public String findByuserId(@Param("userId") Long userId);

    public String findById(String token,String id);
}
