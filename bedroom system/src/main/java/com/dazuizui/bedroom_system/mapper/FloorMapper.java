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

    @Select("SELECT " +
            "*," +
            "(4 - (select count(*) from bedinfo where builder_name = t1.builder_name and room_id = t1.room_id and floor_id = t1.floor_id)) as 'available'" +
            "from" +
            " bed t1 where builder_name = #{builderName} and floor_id = #{floorId}")
    public List<Bed> getRoomName(@Param("builderName") String builderName, @Param("floorId") Integer floorId);

    @Select("SELECT " +
            "DISTINCT room_id," +
            "(4 - (select count(*) from bedinfo where builder_name = t1.builder_name and room_id = t1.room_id and floor_id = t1.floor_id)) as 'available'" +
            "from" +
            " bed t1 where builder_name = #{builderName}    and         profession = #{profession} and" +
            "            class_name = #{className} and floor_id = #{floorId}")
    public List<Bed> studentGetFloor(@Param("builderName") String builderName,@Param("profession")String profession,@Param("className")String className, @Param("floorId") Integer floorId);
}
