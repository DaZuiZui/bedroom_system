package com.dazuizui.bedroom_system.mapper;

import com.dazuizui.bedroom_system.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper {
    /**
     * 用户查询
     * @param user
     * @return
     */
    @Select("select * from user where username = #{username} and password = #{password} limit 1")
    public User userlogin(User user);
}
