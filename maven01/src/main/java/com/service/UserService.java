package com.service;

import com.entity.User;

public interface UserService {
	public User getUserById(int userId);  
	
	//用户注册
    void regist(User user);
    //用户登录
    User login(String name, String password);
    //用户注册查询
    User registFind(String name);
}
