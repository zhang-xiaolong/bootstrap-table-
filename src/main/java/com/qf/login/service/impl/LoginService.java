package com.qf.login.service.impl;

import com.qf.login.mapper.LoginMapper;
import com.qf.login.model.User;
import com.qf.login.service.ILoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class LoginService implements ILoginService {

    @Autowired
    private LoginMapper mapper;


    @Override
    public void register(User user) {
        mapper.addUser(user);
    }

    @Override
    public User login(String username, String password) {
        return mapper.findUserByNameAndPwd(username,password);

    }

    /*//判断用户是否存在
    public boolean isUserExist(String username) {
        if (mapper.findUsersByUsername(username) == null) {
            return false;
        } else {
            return true;
        }
    }*/
    /*//根据提供的用户名拿密码
    public String getPasswordByUsername(String username) {
        return userDao.findUsersByUsername(username).getPassword();
    }*/


}
