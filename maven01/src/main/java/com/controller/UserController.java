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
		System.out.println("�û�ע�᣺"+user.getUserName()+user.getPassword()+user.getAge());	
		User user1 = userService.registFind(user.getUserName());
		JSONObject jsonObject = new JSONObject();
		if(user1==null){  //user���󲻴��������ע��
			userService.regist(user);
	        jsonObject.put("registCode", 1);
	        return jsonObject;
			//ע��ɹ�����תlogin.jsp��¼ҳ��
		}else{
	        jsonObject.put("registCode", 0);
	        return jsonObject;
			//ע��ʧ�ܷ���ע��ҳ��
		}
    }
    
	@RequestMapping("/login")
	public @ResponseBody JSONObject login(String userName,String password,String imgCode,HttpServletRequest request,Model model){
		System.out.println("�û���¼��"+userName+password);
		User user = userService.login(userName, password);
    	JSONObject jsonObject = new JSONObject();
    	if(!(imgCode.trim().equalsIgnoreCase((String) request.getSession().getAttribute("verifyCode")))){
    		jsonObject.put("loginCode",2);  //loginCodeΪ2˵������֤�벻һ��
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
        //���������֤���𣬳���Ϊ4
        String verifyCode = VerifyCodeUtils.generateVerifyCode(4);
        System.out.println(verifyCode);
        //������֤��session
        session.setAttribute("verifyCode",verifyCode);
        //�����������
        try {
			VerifyCodeUtils.outputImage(109, 38, response.getOutputStream(), verifyCode);
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	//�ⷿ��¼
	@RequestMapping("/rentHis")
	public String rentHis(HttpServletRequest request,HttpServletResponse response,Model model){
		//��ȡuser��Ϣ
		String userName = (String) request.getSession().getAttribute("userName");
	    //��ȡroomRent���е�����
		Integer userId = userService.findUserByName(userName).getId();		
		List<RoomRent> roomRentList = roomRentService.findByUserId(userId);
		if(roomRentList!=null&&roomRentList.size()==0){
			model.addAttribute("code","0");//��ʾû������Ϣ
		}else{
			model.addAttribute("code","1");//��ʾû������Ϣ
		}
		model.addAttribute("roomRent", roomRentList);
		return  "roomRentHis";
	}
	//�����¼
	@RequestMapping("/realaseHis")
	public String realaseHis(HttpServletRequest request,HttpServletResponse response,Model model){
		//��ȡuser��Ϣ
		String userName = (String) request.getSession().getAttribute("userName");
	    //��ȡroomRent���е�����
		Integer userId = userService.findUserByName(userName).getId();		
		Boolean roomState = true;
		List<Room> roomList = roomService.findByUserIdAndRoomState(userId, roomState);
		if(roomList!=null&&roomList.size()==0){
			model.addAttribute("code","0");//��ʾû������Ϣ
		}else{
			model.addAttribute("code","1");//��ʾû������Ϣ
		}
		model.addAttribute("roomRealase", roomList);
		return  "roomRealaseHis";
	}
	
	@RequestMapping("/testroomstyle")
	public String testroomstyle(HttpServletRequest request,HttpServletResponse response,Model model){
		//��ȡuser��Ϣ
		List<RoomStyle> roomStyles = userService.testroomstyle();
	//	System.out.println(((RoomStyle)roomStyles.get(0)).getStyle2().getStyleName());
		model.addAttribute("roomStyles",roomStyles);
		return  "ownMessage";
	}
	
	
	
	//ͼƬ�ϴ�
	@RequestMapping("/upload")
	public @ResponseBody JSONObject upload(@RequestParam("file")CommonsMultipartFile file,HttpServletRequest request){
		String userName = (String)request.getSession().getAttribute("userName");
		String dstPath = "F:\\upload\\";
		String fileName = userName+"�����ķ���"+".jpg";
		JSONObject json = new JSONObject();
		try {
			InputStream fin = file.getInputStream();//��ȡ�ļ���
			FileOutputStream fout = new  FileOutputStream(dstPath+fileName);
			//���û�����
			byte[] buffer=new byte[1024];
			int len =0;
			//���������뻺������������ӻ�����д��
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
	
	//ͷ���ϴ�
	@RequestMapping("/uploadUserImg")
	public @ResponseBody JSONObject uploadUserImg(@RequestParam("file")CommonsMultipartFile file,HttpServletRequest request){
		System.out.println("ִ��");
		//String dstPath = request.getSession().getServletContext().getRealPath("upload")+ "\\";
		String dstPath = "F:\\upload\\";
		String userName = request.getParameter("userName");
		String fileName = userName+".jpg";
		Integer userId = userService.findUserByName(userName).getId();
		String userImg = "upload/"+fileName;
		userService.updateByUserImg(userImg,userId);
		JSONObject json = new JSONObject();
		try {
			InputStream fin = file.getInputStream();//��ȡ�ļ���
			FileOutputStream fout = new  FileOutputStream(dstPath+fileName);
			//���û�����
			byte[] buffer=new byte[1024];
			int len =0;
			//���������뻺������������ӻ�����д��
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
	    String roomImg = "upload/"+userName+"�����ķ���"+".jpg";
	    Integer userId = userService.findUserByName(userName).getId();
	    Boolean roomState = false;
	    roomService.insertRoom(roomPrice, areaName, styleName, roomAddress, roomRemark, roomInfo, roomImg,userId,areaId,styleId,roomState);
	    //������Դд����Ϣ�����ݿ�
		List<Area> areaList = areaService.findAll();
		List<Style> styleList = styleService.findAll();
		User user = userService.findUserByName(userName);
	    model.addAttribute("user", user);
	    model.addAttribute("area", areaList);
	    model.addAttribute("style", styleList);
	    return "roomRealase";
	    
	}
}   