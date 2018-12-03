package com.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

@Controller
public class SavaCodeAction {
	private static final long serialVersionUID = 1L;
	@RequestMapping("/savecode")
	@ResponseBody
	public boolean saveCode(HttpServletRequest request,HttpServletResponse response){
		String strCode=request.getParameter("code");
		System.out.println(strCode);
		// 获取会话中保存的验证码
		String sessionCode = request.getSession().getAttribute("checkCode").toString();
		System.out.println(sessionCode);
		// 定义一个json对象
		if(strCode.equalsIgnoreCase(sessionCode)){
			return true;
		}else{
			return false;
		}
		
	}
}
