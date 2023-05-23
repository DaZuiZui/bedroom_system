package com.dazuizui.bedroom_system.mapper;

import com.dazuizui.bedroom_system.domain.Bed;
import com.dazuizui.bedroom_system.domain.Floor;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface FloorMapper {

    public int getMaxFloor(@Param("builderName") String builderName);

    @Select("SELECT " +
            "*," +
            "(4 - (select count(*) from bedinfo where builder_name = t1.builder_name and room_id = t1.room_id and floor_id = t1.floor_id)) as 'available'" +
            "from" +
            " bed t1 where builder_name = #{builderName} and floor_id = #{floorId}")
    public List<Bed> getRoomName(@Param("builderName") String builderName, @Param("floorId") Integer floorId);
}
