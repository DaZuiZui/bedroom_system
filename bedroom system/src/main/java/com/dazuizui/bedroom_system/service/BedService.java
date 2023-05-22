package com.dazuizui.bedroom_system.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Service
public interface BedService {
    public String readExcel(MultipartFile file) throws IOException;
}
