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
}
