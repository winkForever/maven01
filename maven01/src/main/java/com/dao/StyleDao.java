package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Style;

public interface StyleDao {
    int deleteByPrimaryKey(Integer styleId);

    int insert(Style record);

    int insertSelective(Style record);

    Style selectByPrimaryKey(Integer styleId);

    int updateByPrimaryKeySelective(Style record);

    int updateByPrimaryKey(Style record);
    
    List<Style> findAll();
    
    Style findByRoomId(@Param("roomId") Integer roomId);
    
    Style findByStyleName(@Param("styleName") String styleName);
    
    Style findByStyleId(@Param("styleId") Integer styleId);
    
}