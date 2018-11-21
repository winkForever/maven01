package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.UserDao;
import com.entity.RentMessage;
import com.entity.Room;
import com.entity.RoomStyle;
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

	//根据用户名查找租房信息
	@Override
	public List<RentMessage> findRentHisByUserName(String username) {

		return userDao.findRentHisByUserName(username);
	}
	//根据用户名查找租房信息
	@Override
	public List<RentMessage> findrealaseHisByUserName(String username) {
		
		return userDao.findrealaseHisByUserName(username);
	}

	@Override
	public  List<RoomStyle> testroomstyle() {
		// TODO Auto-generated method stub
		return userDao.testroomstyle();
	}

	@Override
	public User findUserByName(String userName) {
		// TODO Auto-generated method stub
		return userDao.findUserByName(userName);
	}

	@Override
	public void updateByUserNameAndUserPhone(String userName, String userPhone,Integer userId) {
		// TODO Auto-generated method stub
		userDao.updateByUserNameAndUserPhone(userName, userPhone,userId);
	}

	@Override
	public void updateByUserImg(String userImg,Integer userId) {
		// TODO Auto-generated method stub
		userDao.updateByUserImg(userImg,userId);
	}




  
}  