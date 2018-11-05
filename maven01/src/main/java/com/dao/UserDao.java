package com.dao;

import org.apache.ibatis.annotations.Param;

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
}