package com.service;

import com.entity.User;

public interface UserService {
	public User getUserById(int userId);  
	
	//�û�ע��
    void regist(User user);
    //�û���¼
    User login(String name, String password);
    //�û�ע���ѯ
    User registFind(String name);
}
