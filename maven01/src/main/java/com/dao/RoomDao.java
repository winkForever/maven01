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
    
    List<Room> findByStyle(@Param("styleName") String styleName);
    
    List<Room> findByAreaAndStyle(@Param("areaName") String areaName,@Param("styleName") String styleName);
    
    public List<Room> findByAreaAndStyleAndPriceAndSpace(@Param("areaName") String areaName,@Param("styleName")String styleName,
    		@Param("price")String price,@Param("space") String space);
}
