package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Style;

public interface StyleService {
	 public List<Style> findAll(); //��ѯ���л���
	 
	 public Style findByRoomId(Integer roomId);
	 
	 public Style findByStyleName(@Param("styleName") String styleName);
	 
	 public Style findByStyleId(@Param("styleId") Integer styleId);
}
