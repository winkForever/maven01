package com.service;

import java.util.List;

import com.entity.Area;


public interface AreaService {
	 public List<Area> findAll(); //查询所有区域
	 
	 public Area findByRoomId(Integer roomId);
	 
	 public Area findByAreaName(String areaName);
	 
	 public Area findByAreaId(Integer areaId);
}
