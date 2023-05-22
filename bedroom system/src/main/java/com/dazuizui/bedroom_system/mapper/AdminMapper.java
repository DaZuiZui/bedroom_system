package com.dazuizui.bedroom_system.mapper;

import com.dazuizui.bedroom_system.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface AdminMapper {
    @Select("select * from user where id = #{id} and role = 1 ")
    public User findByIdAndRole(@Param("id")Long userid, @Param("role")Integer role);
}
