package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.util.JavaEmailSender;

@Controller
public class EmailSend {

	
	//跳转到发送email
	@RequestMapping("/sendEmail")
	public String sendEmail2(){
		
		return "sendEmail";
	}
	//执行发送email
	@RequestMapping("/goSendEmail")
	@ResponseBody
	public String goSendEmail(@RequestParam String emailtextx,@RequestParam String emailtitle,@RequestParam String text){
		
		System.out.println(emailtextx);
		
	    try {
			JavaEmailSender.sendEmail(emailtextx, emailtitle, text);
			
			return JSONObject.toJSONString("true");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return JSONObject.toJSONString("false");
		}
     
	}
}
