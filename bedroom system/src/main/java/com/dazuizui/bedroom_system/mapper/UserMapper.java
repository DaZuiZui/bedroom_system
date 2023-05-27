package com.dazuizui.bedroom_system.mapper;

import com.dazuizui.bedroom_system.domain.User;
import com.dazuizui.bedroom_system.domain.bo.GetPaginationInfoBo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Mapper
public interface UserMapper {
    /**
     * 用户查询
     * @param user
     * @return
     */
    @Select("select * from user where username = #{username} and password = #{password} limit 1")
    public User userlogin(User user);

    /**
     * 管理员登入
     * @param user
     * @return
     */
    @Select("select * from user where username = #{username} and password = #{password} and role = 1 limit 1")
    public User adminLogin(User user);

    @Select("select * from user where id = #{id} limit 1")
    public User findById(@Param("id")Long id);

    public Long insertUser(List<User> list);

    /**
     *
     * @param getPaginationInfoBo
     * @return
     */
    public List<User> GetPaginationInfoBo(GetPaginationInfoBo getPaginationInfoBo);

    @Select("select count(*) from user")
    public Long querycount();

    @Update("update user set status = #{status} where username = #{username}")
    public Long updateStatusByUsername(@Param("username") String username, @Param("status") Integer status);
}
