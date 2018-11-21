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
import com.entity.Estimate;
import com.entity.Room;
import com.entity.Style;
import com.service.AreaService;
import com.service.EstimateService;
import com.service.RoomService;
import com.service.RoomRentService;
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
    @Resource
    private EstimateService estimateService;
    @Resource
    private RoomRentService roomRentService;
    @Resource
    private UserService userService;
    
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
	
	@RequestMapping("/showRoomDetail")
	public String showRoomDetail(HttpServletRequest request,Model model){
	   Integer roomId = Integer.parseInt(request.getParameter("roomId"));
	   Room room =roomService.findByRoomId(roomId);
	   Area area = areaService.findByRoomId(roomId); 
	   Style style= styleService.findByRoomId(roomId);
	   List<Estimate> estimateList = estimateService.findByRoomId(roomId);
	   model.addAttribute("room", room);
	   model.addAttribute("area", area);
	   model.addAttribute("style", style);
	   model.addAttribute("estimate", estimateList);
	   return "roomdetail";
	}
	
	@RequestMapping("/rentRoom")
	public String rentRoom(HttpServletRequest request,Model model){
		Integer roomId = Integer.parseInt(request.getParameter("roomId"));
		Room room = roomService.findByRoomId(roomId);
		String roomPrice = room.getRoomPrice();
		Integer areaId = room.getArea();
		Integer styleId = room.getStyle();
		String areaName = areaService.findByAreaId(areaId).getAreaName();
        String styleName = styleService.findByStyleId(styleId).getStyleName();
		String roomAddress = room.getRoomAdd();
		String roomRemark = room.getRoomRemark();
		String roomInfo = room.getRoomInfo();
		String roomImg = room.getRoomImg();
	    String userName = (String)request.getSession().getAttribute("userName");
	    Integer userId = userService.findUserByName(userName).getId();
	    Boolean roomState = true;
		roomRentService.insertRoomRent(roomPrice, areaName, styleName, roomAddress, roomRemark, roomInfo, roomImg, userId, areaId, styleId, roomState);
		roomService.updateRoomState(roomId,roomState);
		Room room1 = roomService.findByRoomId(roomId);
		Area area = areaService.findByRoomId(roomId);
		Style style = styleService.findByRoomId(roomId);
		List<Estimate> estimateList = estimateService.findByRoomId(roomId);
		model.addAttribute("room", room1);
		model.addAttribute("area", area);
		model.addAttribute("style", style);
		model.addAttribute("estimate", estimateList);
		return "roomdetail";
	}
}
