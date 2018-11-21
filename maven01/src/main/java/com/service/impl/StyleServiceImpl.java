package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.StyleDao;
import com.entity.Style;
import com.service.StyleService;

@Service("styleService")  
public class StyleServiceImpl implements StyleService{
	  @Resource  
	  private StyleDao styleDao;
	  
	  public List<Style> findAll(){   //查询所有户型
		  return styleDao.findAll();
	  }

	@Override
	public Style findByRoomId(Integer roomId) {
		 return styleDao.findByRoomId(roomId);
	}

	@Override
	public Style findByStyleName(String styleName) {
		// TODO Auto-generated method stub
		return styleDao.findByStyleName(styleName);
	}

	@Override
	public Style findByStyleId(Integer styleId) {
		// TODO Auto-generated method stub
		return styleDao.findByStyleId(styleId);
	}
	   
}
