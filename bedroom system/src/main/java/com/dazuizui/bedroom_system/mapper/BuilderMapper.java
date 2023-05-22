package com.dazuizui.bedroom_system.mapper;

import com.dazuizui.bedroom_system.domain.Builder;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 寝室楼管理
 */
@Mapper
public interface BuilderMapper {
    @Select("select * from builder")
    public List<Builder> findAllbuilder();
}
