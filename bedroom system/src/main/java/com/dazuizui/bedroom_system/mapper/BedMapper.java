package com.dazuizui.bedroom_system.mapper;

import com.dazuizui.bedroom_system.domain.Bed;
import com.dazuizui.bedroom_system.domain.BedInfo;
import com.dazuizui.bedroom_system.domain.bo.ChooseBedBo;
import com.dazuizui.bedroom_system.domain.bo.GetNotOptionalBedBo;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface BedMapper {

    public Long insertBed(@Param("list")List<Bed> list);

    public List<Bed> getNonOptionalBeds(GetNotOptionalBedBo bedBo);

    @Select("select * from bedInfo where user_id = #{userId}")
    public BedInfo findBedInfoById(@Param("userId")Long userId);

    public Bed findById(@Param("id")Long id);
    @Select("select * from bed where id = #{id}")
    public Bed fd(@Param("id")Long id);

    @Update("update bed set status = #{status} where id = #{id}")
    public Long updateStatusById(@Param("status")Integer status,@Param("id")Long id);

    /**
     * 添加床位信息
     * @param chooseBedBo
     * @return
     */
    @Insert("insert into bedinfo value(null,#{roomId},#{builderName},#{bedId},#{userId},#{floor})")
    public Long insertBedInfo(ChooseBedBo chooseBedBo);

    @Select("select id,room_id,builder_name,user_id,floor_id,(select name from user where id = user_id limit 1) as 'name',(select bed_id from bed where id = t1.bed_id) as 'bed_id' from bedinfo t1 where builder_name = #{builderName} and floor_id = #{floor} and room_id = #{roomId} ")
    public List<BedInfo> checkBed(GetNotOptionalBedBo getNotOptionalBedBo);

    @Select("select * from bedInfo where id = #{id}")
    public BedInfo findBedInfoById1(@Param("id")Long id);

    @Delete("delete from bedInfo where id = #{id}")
    public Long deleteBedInfoById(@Param("id")Long id);
}
