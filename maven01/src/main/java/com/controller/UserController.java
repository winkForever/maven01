package com.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.json.JsonObject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.alibaba.fastjson.JSONObject;
import com.entity.Area;
import com.entity.RentMessage;
import com.entity.Room;
import com.entity.RoomStyle;
import com.entity.RoomRent;
import com.entity.Style;
import com.entity.User;
import com.service.AreaService;
import com.service.RoomService;
import com.service.RoomRentService;
import com.service.StyleService;
import com.service.UserService;
import com.util.VerifyCodeUtils;
  
  
@Controller  
@RequestMapping("/user")  
// /user/**
public class UserController {  
    private static Logger log=LoggerFactory.getLogger(UserController.class);
    @Resource  
    private UserService userService;  
    @Resource 
    private RoomService roomService; 
    @Resource
    private AreaService areaService;
    @Resource
    private StyleService styleService;
    @Resource
    private RoomRentService roomRentService;
    
   
    @RequestMapping("/regist")
	public @ResponseBody JSONObject regist(User user,Model model){
		System.out.println("用户注册："+user.getUserName()+user.getPassword()+user.getAge());	
		User user1 = userService.registFind(user.getUserName());
		JSONObject jsonObject = new JSONObject();
		if(user1==null){  //user对象不存在则可以注册
			userService.regist(user);
	        jsonObject.put("registCode", 1);
	        return jsonObject;
			//注册成功后跳转login.jsp登录页面
		}else{
	        jsonObject.put("registCode", 0);
	        return jsonObject;
			//注册失败返回注册页面
		}
    }
    
	@RequestMapping("/login")
	public @ResponseBody JSONObject login(String userName,String password,String imgCode,HttpServletRequest request,Model model){
		System.out.println("用户登录："+userName+password);
		User user = userService.login(userName, password);
    	JSONObject jsonObject = new JSONObject();
    	if(!(imgCode.trim().equalsIgnoreCase((String) request.getSession().getAttribute("verifyCode")))){
    		jsonObject.put("loginCode",2);  //loginCode为2说明是验证码不一致
    		jsonObject.put("userType", user.getUserType());
    		return jsonObject;
    	}else{
		if(user!=null){
			request.getSession().setAttribute("loginFlag", true);  
	    	request.getSession().setAttribute("userName", userName);
            jsonObject.put("loginCode", 1);
            jsonObject.put("userType", user.getUserType());
            System.out.println(user.getUserType());
			return jsonObject;
		}else{
			jsonObject.put("loginCode", 0);
			jsonObject.put("userType", user.getUserType());
			return jsonObject;	
		 }
    	}
	}
	
	@RequestMapping("/loginOut")
	public String loginOut(HttpServletRequest request){
		request.getSession().invalidate();
		return "initPage";
	}
	
	@RequestMapping("/verify")
	public void verify(HttpServletRequest request,HttpServletResponse response){
		HttpSession session = request.getSession();
		response.setHeader("Expires", "-1");
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Pragma", "-1");
        //生成随机验证码吗，长度为4
        String verifyCode = VerifyCodeUtils.generateVerifyCode(4);
        System.out.println(verifyCode);
        //保存验证码session
        session.setAttribute("verifyCode",verifyCode);
        //输出到网络流
        try {
			VerifyCodeUtils.outputImage(109, 38, response.getOutputStream(), verifyCode);
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	//租房记录
	@RequestMapping("/rentHis")
	public String rentHis(HttpServletRequest request,HttpServletResponse response,Model model){
		//获取user信息
		String userName = (String) request.getSession().getAttribute("userName");
	    //获取roomRent表中的数据
		Integer userId = userService.findUserByName(userName).getId();		
		List<RoomRent> roomRentList = roomRentService.findByUserId(userId);
		if(roomRentList!=null&&roomRentList.size()==0){
			model.addAttribute("code","0");//表示没返回信息
		}else{
			model.addAttribute("code","1");//表示没返回信息
		}
		model.addAttribute("roomRent", roomRentList);
		return  "roomRentHis";
	}
	//出租记录
	@RequestMapping("/realaseHis")
	public String realaseHis(HttpServletRequest request,HttpServletResponse response,Model model){
		//获取user信息
		String userName = (String) request.getSession().getAttribute("userName");
	    //获取roomRent表中的数据
		Integer userId = userService.findUserByName(userName).getId();		
		Boolean roomState = true;
		List<Room> roomList = roomService.findByUserIdAndRoomState(userId, roomState);
		if(roomList!=null&&roomList.size()==0){
			model.addAttribute("code","0");//表示没返回信息
		}else{
			model.addAttribute("code","1");//表示没返回信息
		}
		model.addAttribute("roomRealase", roomList);
		return  "roomRealaseHis";
	}
	
	@RequestMapping("/testroomstyle")
	public String testroomstyle(HttpServletRequest request,HttpServletResponse response,Model model){
		//获取user信息
		List<RoomStyle> roomStyles = userService.testroomstyle();
	//	System.out.println(((RoomStyle)roomStyles.get(0)).getStyle2().getStyleName());
		model.addAttribute("roomStyles",roomStyles);
		return  "ownMessage";
	}
	
	
	
	//图片上传
	@RequestMapping("/upload")
	public @ResponseBody JSONObject upload(@RequestParam("file")CommonsMultipartFile file,HttpServletRequest request){
		String userName = (String)request.getSession().getAttribute("userName");
		String dstPath = "F:\\upload\\";
		String fileName = userName+"发布的房屋"+".jpg";
		JSONObject json = new JSONObject();
		try {
			InputStream fin = file.getInputStream();//获取文件流
			FileOutputStream fout = new  FileOutputStream(dstPath+fileName);
			//设置缓冲区
			byte[] buffer=new byte[1024];
			int len =0;
			//输入流读入缓冲区，输出流从缓冲区写出
			while((len=fin.read(buffer))>0)
			{
				fout.write(buffer,0,len);
			}
			fout.close();
			json.put("code", "0");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return json;
	}
	
	//头像上传
	@RequestMapping("/uploadUserImg")
	public @ResponseBody JSONObject uploadUserImg(@RequestParam("file")CommonsMultipartFile file,HttpServletRequest request){
		System.out.println("执行");
		//String dstPath = request.getSession().getServletContext().getRealPath("upload")+ "\\";
		String dstPath = "F:\\upload\\";
		String userName = request.getParameter("userName");
		String fileName = userName+".jpg";
		Integer userId = userService.findUserByName(userName).getId();
		String userImg = "upload/"+fileName;
		userService.updateByUserImg(userImg,userId);
		JSONObject json = new JSONObject();
		try {
			InputStream fin = file.getInputStream();//获取文件流
			FileOutputStream fout = new  FileOutputStream(dstPath+fileName);
			//设置缓冲区
			byte[] buffer=new byte[1024];
			int len =0;
			//输入流读入缓冲区，输出流从缓冲区写出
			while((len=fin.read(buffer))>0)
			{
				fout.write(buffer,0,len);
			}
			fout.close();
			json.put("code", "0");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return json;
	}
	
	@RequestMapping("/showOwnMessage")
	public String showOwnMessage(HttpServletRequest request,Model model){
		String userName = (String)request.getSession().getAttribute("userName");
		User user = userService.findUserByName(userName);
	    model.addAttribute("user", user);
	    return "ownMessage";
	}
	
	@RequestMapping("/showRoomRealase")
	public String showRoomRealase(HttpServletRequest request,Model model){
		String userName = (String)request.getSession().getAttribute("userName");
		List<Area> areaList = areaService.findAll();
		List<Style> styleList = styleService.findAll();
		User user = userService.findUserByName(userName);
	    model.addAttribute("user", user);
	    model.addAttribute("area", areaList);
	    model.addAttribute("style", styleList);
	    return "roomRealase";
	}
	
	@RequestMapping("/modifyUserMessage")
	public String modifyUserMessage(HttpServletRequest request,Model model){
		String userName = request.getParameter("userName");
		String userPhone = request.getParameter("userPhone");
		String originalUserName =(String)request.getSession().getAttribute("userName");
		User user = userService.findUserByName(originalUserName);
		Integer userId = user.getId();
		userService.updateByUserNameAndUserPhone(userName, userPhone, userId);
        request.getSession().setAttribute("userName", userName);
        User user1 = userService.findUserByName(userName);
        model.addAttribute("user", user1);
	    return "ownMessage";
	}
	
	@RequestMapping("/realaseRoom")
	public String realaseRoom(HttpServletRequest request,Model model){
	    String userName = (String)request.getSession().getAttribute("userName");
	    String roomPrice = request.getParameter("roomPrice");
	    String areaName = request.getParameter("areaName");
	    Integer areaId = areaService.findByAreaName(areaName).getAreaId();	  
	    String styleName = request.getParameter("styleName");
	    Integer styleId = styleService.findByStyleName(styleName).getStyleId();
	    String roomAddress = request.getParameter("roomAddress");
	    String roomRemark = request.getParameter("roomRemark");
	    String roomInfo = request.getParameter("roomInfo");
	    String roomImg = "upload/"+userName+"发布的房屋"+".jpg";
	    Integer userId = userService.findUserByName(userName).getId();
	    Boolean roomState = false;
	    roomService.insertRoom(roomPrice, areaName, styleName, roomAddress, roomRemark, roomInfo, roomImg,userId,areaId,styleId,roomState);
	    //发布房源写入信息到数据库
		List<Area> areaList = areaService.findAll();
		List<Style> styleList = styleService.findAll();
		User user = userService.findUserByName(userName);
	    model.addAttribute("user", user);
	    model.addAttribute("area", areaList);
	    model.addAttribute("style", styleList);
	    return "roomRealase";
	    
	}
}   