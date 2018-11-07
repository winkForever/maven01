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
	   
}
