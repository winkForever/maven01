package com.service;

import java.util.List;

import com.entity.Room;

public interface RoomService {
    public List<Room> findAll(); //查询所有房屋
    
    public List<Room> findByArea(String areaName); //查询所属地区的房屋
    
    public List<Room> findByStyle(String styleName); //查询所属户型的房屋
    
    public List<Room> findByAreaAndStyle(String areaName,String styleName);
    
    public List<Room> findByAreaAndStyleAndPriceAndSpace(String areaName,String styleName,String price,String space);
    
    
}
