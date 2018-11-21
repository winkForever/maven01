package com.service;

import java.util.List;

import com.entity.RentMessage;
import com.entity.RoomStyle;
import com.entity.User;

public interface UserService {
	public User getUserById(int userId);  
	
	//�û�ע��
    void regist(User user);
    //�û���¼
    User login(String name, String password);
    //�û�ע���ѯ
    User registFind(String name);
    //�����û������ҳ�����Ϣ
	public List<RentMessage> findRentHisByUserName(String username);
	//�����û���������ʷ������Ϣ
	public List<RentMessage> findrealaseHisByUserName(String username);

	public List<RoomStyle> testroomstyle();
	
	public User findUserByName(String userName);
	
	public void updateByUserNameAndUserPhone(String userName,String userPhone,Integer userId);
	
	public void updateByUserImg(String userImg,Integer userId);
	
}
