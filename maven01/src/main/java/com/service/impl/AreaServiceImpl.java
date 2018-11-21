package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.AreaDao;
import com.entity.Area;
import com.service.AreaService;



@Service("areaService")  
public class AreaServiceImpl implements AreaService{
	  @Resource  
	  private AreaDao areaDao;
	  
	  public List<Area> findAll(){
		  return areaDao.findAll();
	  }

	 @Override
      public Area findByRoomId(Integer roomId) {
		// TODO Auto-generated method stub
		 return areaDao.findByRoomId(roomId);
	 }

	@Override
	public Area findByAreaName(String areaName) {
		// TODO Auto-generated method stub
		return areaDao.findByAreaName(areaName);
	}

	@Override
	public Area findByAreaId(Integer areaId) {
		// TODO Auto-generated method stub
		return areaDao.findByAreaId(areaId);
	}
}
