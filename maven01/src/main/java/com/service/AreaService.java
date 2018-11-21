package com.service;

import java.util.List;

import com.entity.Area;


public interface AreaService {
	 public List<Area> findAll(); //��ѯ��������
	 
	 public Area findByRoomId(Integer roomId);
	 
	 public Area findByAreaName(String areaName);
	 
	 public Area findByAreaId(Integer areaId);
}
