package com.dazuizui.bedroom_system.service;

import com.dazuizui.bedroom_system.domain.BedInfo;
import com.dazuizui.bedroom_system.domain.bo.ChooseBedBo;
import com.dazuizui.bedroom_system.domain.bo.GetNotOptionalBedBo;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
public interface BedService {
    public String readExcel(MultipartFile file) throws IOException;


    public String getNonOptionalBeds(GetNotOptionalBedBo bedBo);


    public String chooseBed(ChooseBedBo chooseBedBo);

    public String checkBed(@RequestBody GetNotOptionalBedBo getNotOptionalBedBo);
}
