package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Area;
import com.entity.Room;
import com.entity.Style;
import com.service.AreaService;
import com.service.RoomService;
import com.service.StyleService;
import com.service.UserService;

@Controller  
@RequestMapping("/room")  
public class RoomController {
    private static Logger log=LoggerFactory.getLogger(RoomController.class);
    @Resource  
    private RoomService roomService;   
    @Resource  
    private AreaService areaService;
    @Resource  
    private StyleService styleService;   
    
	@RequestMapping("/show")
	public String show(HttpServletRequest request,Model model){
	   List<Room> roomList = roomService.findAll();
	   List<Area> areaList = areaService.findAll(); 
	   List<Style> styleList = styleService.findAll();
	   model.addAttribute("room", roomList);
	   model.addAttribute("area", areaList);
	   model.addAttribute("style", styleList);
	   return "room";
	}
	
	@RequestMapping("/searchRoom")
	public String searchRoom(HttpServletRequest request,Model model){	
	       String areaName = request.getParameter("areaName");
	       String styleName = request.getParameter("styleName");
	       String price =   request.getParameter("price");
	       String space =  request.getParameter("space");	       
		   List<Room> roomList = roomService.findByAreaAndStyleAndPriceAndSpace(areaName, styleName, price, space);
		   List<Area> areaList = areaService.findAll(); 
		   List<Style> styleList = styleService.findAll();
		   model.addAttribute("room", roomList);
		   model.addAttribute("area", areaList);
		   model.addAttribute("style", styleList);
		   return "room";  

	}
}
