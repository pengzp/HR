package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MenusAction {

	@RequestMapping("/indexHR")
	public String getLocation(){
		
		return "indexHR";
	}
	
	@RequestMapping("/userManager")
	public String userList(){
		
		return "userManager";
	}
	/*
	 * --------------zpl
	 * 
	 * 测试
	 * 
	 */
	@RequestMapping("/userTest")
	public String userTest(){
		
		return "salarysigner";
	}
	
	
}
