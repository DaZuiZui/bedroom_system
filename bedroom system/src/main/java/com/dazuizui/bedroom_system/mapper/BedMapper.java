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

    @Update("update bed set status = #{status} where id = #{id}")
    public Long updateStatusById(@Param("status")Integer status,@Param("id")Long id);

    /**
     * 添加床位信息
     * @param chooseBedBo
     * @return
     */
    @Insert("insert into bedinfo value(null,#{roomId},#{builderName},#{bedId},#{userId},#{floorId})")
    public Long insertBedInfo(ChooseBedBo chooseBedBo);
}
