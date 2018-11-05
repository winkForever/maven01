package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Room;
import com.service.RoomService;
import com.service.UserService;

@Controller  
@RequestMapping("/room")  
public class RoomController {
    private static Logger log=LoggerFactory.getLogger(RoomController.class);
    @Resource  
    private RoomService roomService;      
    
	@RequestMapping("/show")
	public String show(HttpServletRequest request,Model model){
	   List<Room> roomList = roomService.findAll();
	   model.addAttribute("room", roomList);
	   return "room";
	}
}
