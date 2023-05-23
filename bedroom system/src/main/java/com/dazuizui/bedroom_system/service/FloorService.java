package com.dazuizui.bedroom_system.service;

import com.dazuizui.bedroom_system.domain.Floor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface FloorService {
    public String getFLoorList(String builderId);
}
