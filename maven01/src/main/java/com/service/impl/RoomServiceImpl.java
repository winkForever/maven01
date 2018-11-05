package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.RoomDao;
import com.entity.Room;
import com.service.RoomService;

@Service("roomService")  
public class RoomServiceImpl implements RoomService{
	  @Resource  
	  private RoomDao roomDao;
	  
	  public List<Room> findAll(){
		  return roomDao.findAll();
	  }
}
