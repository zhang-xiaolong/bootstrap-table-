package com.qf.login.service;

import com.qf.login.model.User;

public interface  ILoginService {
    public void register(User user);
    public User login(String username, String password);
}
