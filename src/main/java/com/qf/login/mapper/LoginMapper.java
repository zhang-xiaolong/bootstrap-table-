package com.qf.login.mapper;

import com.qf.login.model.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface LoginMapper {

    //添加用户
    public void addUser(User user);

    //根据用户名和密码查找用户
    //注解的两个参数会自动封装成map集合，括号内为键
    public User findUserByNameAndPwd(@Param("username") String username, @Param("password") String password);

}
