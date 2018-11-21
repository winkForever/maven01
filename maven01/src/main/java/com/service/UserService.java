package com.service;

import java.util.List;

import com.entity.RentMessage;
import com.entity.RoomStyle;
import com.entity.User;

public interface UserService {
	public User getUserById(int userId);  
	
	//用户注册
    void regist(User user);
    //用户登录
    User login(String name, String password);
    //用户注册查询
    User registFind(String name);
    //根据用户名查找出租信息
	public List<RentMessage> findRentHisByUserName(String username);
	//根据用户名查找历史发布信息
	public List<RentMessage> findrealaseHisByUserName(String username);

	public List<RoomStyle> testroomstyle();
	
	public User findUserByName(String userName);
	
	public void updateByUserNameAndUserPhone(String userName,String userPhone,Integer userId);
	
	public void updateByUserImg(String userImg,Integer userId);
	
}
