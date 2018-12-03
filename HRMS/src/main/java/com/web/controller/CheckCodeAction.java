package com.web.controller;

import java.awt.image.BufferedImage;

import java.awt.image.RenderedImage;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.w3c.dom.Text;

import com.pojo.SaveCode;

@Controller
public class CheckCodeAction {
	private static final long serialVersionUID = 1L;
	@RequestMapping("/checkcode")
	public void checkcode(HttpServletRequest request,HttpServletResponse response){
		SaveCode saveCode=new SaveCode("abcdefghijklmnopqrstuvwxyz123456789".toUpperCase().toCharArray(),
				100, 25, 6);
		// 图片不需要缓存的响应头
		response.setHeader("Pragma", "No-cache");
		// 图片不需要缓存的响应头
		response.setHeader("Cache-Control", "no-cache");
		// 图片不需要缓存的响应头
		response.setDateHeader("Expires", 0);
		// 设置响应MIME类型为JPEG图片
		response.setContentType("image/jpeg");
		// 创建验证码图片
		saveCode.createSaveCodeImage();
		// 获取验证码图片
		BufferedImage img = saveCode.getImage();
		// 获取验证码字符串
		String codeString = saveCode.getCodeString();
		// 获取会话对象
		HttpSession session = request.getSession();
		// 将验证码字符串存入会话
		session.setAttribute("checkCode", codeString);
		try {
			// 将缓存图片编码为物理图片数据并从响应输出流中输出到客户端
			ImageIO.write(img, "JPEG", response.getOutputStream());
			// 捕获异常
		} catch (Exception e) {

			// TODO: handle exception
		}
		
	}
}
