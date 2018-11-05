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
    
   //添加用户
    void addUser(User user);
    
  //根据用户名和密码查询用户
  	//注解的两个参数会自动封装成map集合，括号内即为键
    User findUserByNameAndPwd(@Param("userName")String name, @Param("password")String password);
   
   //根据用户名查询用户
    User findUserByName(@Param("userName")String name);
}