package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.RentMessage;
import com.entity.RoomStyle;
import com.entity.User;

public interface UserDao {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
   //����û�
    void addUser(User user);
    
  //�����û����������ѯ�û�
  	//ע��������������Զ���װ��map���ϣ������ڼ�Ϊ��
    User findUserByNameAndPwd(@Param("userName")String name, @Param("password")String password);
   
   //�����û�����ѯ�û�
    User findUserByName(@Param("userName")String name);
	//�����û��������ⷿ��Ϣ
	List<RentMessage> findRentHisByUserName(String username);
	//�����û���������ʷ������Դ��Ϣ
	List<RentMessage> findrealaseHisByUserName(String username);
	List<RoomStyle> testroomstyle();
	
	void updateByUserNameAndUserPhone(@Param("userName")String userName,@Param("userPhone")String userPhone,@Param("userId")Integer userId);

	void updateByUserImg(@Param("userImg")String userImg, @Param("userId") Integer userId);
	
}