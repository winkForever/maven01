package com.service;

import java.util.List;

import com.entity.Room;

public interface RoomService {
    public List<Room> findAll(); //��ѯ���з���
    
    public List<Room> findByArea(String areaName); //��ѯ���������ķ���
    
    public List<Room> findByStyle(String styleName); //��ѯ�������͵ķ���
    
    public List<Room> findByAreaAndStyle(String areaName,String styleName);
    
    public List<Room> findByAreaAndStyleAndPriceAndSpace(String areaName,String styleName,String price,String space);
    
    
}
