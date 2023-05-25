package com.dazuizui.bedroom_system.mapper;

import com.dazuizui.bedroom_system.domain.Bed;
import com.dazuizui.bedroom_system.domain.BedInfo;
import com.dazuizui.bedroom_system.domain.Builder;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 寝室楼管理
 */
@Mapper
public interface BuilderMapper {
    @Select("select * from builder")
    public List<Builder> findAllbuilder();

    /**
     * 通过id查询
     * @return
     */
    @Select("select * from builder where name = #{builderId}")
    public Builder findById(@Param("builderId")String builderId);

    @Select("SELECT t2.*  FROM bedinfo t1 LEFT JOIN  bed t2  ON  t1.bed_id = t2.id  WHERE t1.user_id = #{userId} limit 1 ")
    public Bed findByuserId(@Param("userId") Long userId);
}
