package com.service;

import java.util.List;

import com.entity.Room;

public interface RoomService {
    public List<Room> findAll(); //��ѯ���з���
    
    public List<Room> findByArea(String areaName); //��ѯ���������ķ���
}
