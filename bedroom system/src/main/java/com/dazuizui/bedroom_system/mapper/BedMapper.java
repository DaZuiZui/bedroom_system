package com.dazuizui.bedroom_system.mapper;

import com.dazuizui.bedroom_system.domain.Bed;
import com.dazuizui.bedroom_system.domain.BedInfo;
import com.dazuizui.bedroom_system.domain.bo.GetNotOptionalBedBo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface BedMapper {

    public Long insertBed(@Param("list")List<Bed> list);

    public List<Bed> getNonOptionalBeds(GetNotOptionalBedBo bedBo);
}
