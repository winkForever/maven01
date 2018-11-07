package com.service;

import java.util.List;

import com.entity.Room;

public interface RoomService {
    public List<Room> findAll(); //查询所有房屋
    
    public List<Room> findByArea(String areaName); //查询所属地区的房屋
}
