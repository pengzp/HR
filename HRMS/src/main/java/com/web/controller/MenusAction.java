package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MenusAction {

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
