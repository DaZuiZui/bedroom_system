package com.dazuizui.bedroom_system.mapper;

import com.dazuizui.bedroom_system.domain.Bed;
import com.dazuizui.bedroom_system.domain.Floor;
import com.dazuizui.bedroom_system.domain.bo.StudentGetFloorBo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Mapper
public interface FloorMapper {

    public Integer getMaxFloor(@Param("builderName") String builderName);

    public Integer studentGetMaxFloor(@Param("builderName") String builderName,@Param("profession")String profession,@Param("className")String className);


    public List<Bed> getRoomName(@Param("builderName") String builderName, @Param("floorId") Integer floorId);

    public List<Bed> studentGetFloor(@Param("builderName") String builderName,@Param("profession")String profession,@Param("className")String className, @Param("floorId") Integer floorId);
}
