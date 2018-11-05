package com.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.UserDao;
import com.entity.User;
import com.service.UserService;

@Service("userService")  
public class UserServiceImpl implements UserService {  
    @Resource  
    private UserDao userDao;  
    
    public User getUserById(int userId) {  
        // TODO Auto-generated method stub  
        return this.userDao.selectByPrimaryKey(userId);  
    }  
    
	public void regist(User user) {
		// TODO Auto-generated method stub
		userDao.addUser(user);
	}
 
	public User login(String userName, String password) {
		return userDao.findUserByNameAndPwd(userName,password);
	}
	
	public User registFind(String userName){
		return userDao.findUserByName(userName);
	}

  
}  