package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Room;

public interface RoomDao {
    int deleteByPrimaryKey(Integer roomId);

    int insert(Room record);

    int insertSelective(Room record);

    Room selectByPrimaryKey(Integer roomId);

    int updateByPrimaryKeySelective(Room record);

    int updateByPrimaryKey(Room record);
    
    List<Room> findAll();
    
    List<Room> findByArea(@Param("areaName") String areaName);
}