package com.controller;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
    private static Logger log=LoggerFactory.getLogger(IndexController.class);  
	
	@RequestMapping("/index")  
	public String toIndex(HttpServletRequest request){
		 request.getSession().setAttribute("loginFlag", false);		 
		 return "index";
		// return "test";
	}
}
