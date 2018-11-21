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
	   
	  public List<Room> findByArea(String areaName){
		  return roomDao.findByArea(areaName);
	  }
	  
	  public List<Room> findByStyle(String styleName){
		  return roomDao.findByStyle(styleName);
	  }
	  
	  public List<Room> findByAreaAndStyle(String areaName,String styleName){
		  return roomDao.findByAreaAndStyle(areaName, styleName);
	  }

	  @Override
	  public List<Room> findByAreaAndStyleAndPriceAndSpace(String areaName, String styleName, String price,
			String space) {
		  return roomDao.findByAreaAndStyleAndPriceAndSpace(areaName, styleName, price, space);
      }

	 @Override
	 public Room findByRoomId(Integer roomId) {
	      return roomDao.findByRoomId(roomId);
	 }

	@Override
	public void insertRoom(String roomPrice, String areaName, String styleName, String roomAddress, String roomRemark,
			String roomInfo, String roomImg,Integer userId,Integer areaId,Integer styleId,Boolean roomState) {
		// TODO Auto-generated method stub
		roomDao.insertRoom(roomPrice, areaName, styleName, roomAddress, roomRemark, roomInfo, roomImg,userId,areaId,styleId,roomState);
	}

	@Override
	public void updateRoomState(Integer roomId, Boolean roomState) {
		// TODO Auto-generated method stub
		roomDao.updateRoomState(roomId, roomState);
	}

	@Override
	public List<Room> findByUserId(Integer userId) {
		// TODO Auto-generated method stub
		return roomDao.findByUserId(userId);
	}

	@Override
	public List<Room> findByUserIdAndRoomState(Integer userId, Boolean roomState) {
		// TODO Auto-generated method stub
		return roomDao.findByUserIdAndRoomState(userId, roomState);
	}
	  
}
