package com.controller;

import java.io.File;
import java.io.IOException;
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

import com.alibaba.fastjson.JSONObject;
import com.entity.User;
import com.service.UserService;
import com.util.VerifyCodeUtils;
  
  
@Controller  
@RequestMapping("/user")  
// /user/**
public class UserController {  
    private static Logger log=LoggerFactory.getLogger(UserController.class);
    @Resource  
    private UserService userService;      
    
   
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
		User user = userService.login(userName,password);
    	JSONObject jsonObject = new JSONObject();
    	if(!(imgCode.trim().equalsIgnoreCase((String) request.getSession().getAttribute("verifyCode")))){
    		jsonObject.put("loginCode",2);  //loginCode为2说明是验证码不一致
    		return jsonObject;
    	}else{
		if(user!=null){
			request.getSession().setAttribute("loginFlag", true);  
	    	request.getSession().setAttribute("userName", userName);
            jsonObject.put("loginCode", 1);
			return jsonObject;
		}else{
			jsonObject.put("loginCode", 0);
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

}   