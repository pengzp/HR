package com.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pojo.Sign;

import com.service.SalarySignService;

@Controller
public class SalaryManageAction {
	
	@Resource
	private SalarySignService salarySignService;

	public SalarySignService getSalarySignService() {
		return salarySignService;
	}

	public void setSalarySignService(SalarySignService salarySignService) {
		this.salarySignService = salarySignService;
	}
	@RequestMapping("/salarysign")
	public String salaryTest(){
		return "salarysigner";
	}
	/*
	 * 
	 * 薪酬标准登记
	 * 
	 * 
	 * 
	 */
	@RequestMapping(value="Salarysign",method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView salarySigned(HttpServletRequest request,@ModelAttribute(value="sign") Sign sign){
		
		boolean a = salarySignService.addSalarySign(sign);
		System.out.println(a+"----------------------------------------");
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		map.put("val", a);
		
		ModelAndView modelAndView = new ModelAndView("salarysigner",map);
		
		return  modelAndView;
	}
	/*
	 * 进入薪酬标准修改页面
	 * 
	 * 
	 * 
	 */
	@RequestMapping("/salaryupdate")
	public String intoPage(){
		
		
		return "salaryfuhe";
	}
	/*
	 * 薪酬标准修改
	 * 
	 * 
	 * 
	 */
	@RequestMapping("/FuHe")
	public ModelAndView getData(){
		Sign sign = salarySignService.getSignMessage();
		Map<String, Sign> map = new HashMap<String, Sign>();
		map.put("mm", sign);
		ModelAndView modelAndView = new ModelAndView("salaryfuhe",map);
		
		
		return modelAndView;
	}
	/*
	 * 薪酬标准查询
	 * 
	 * 
	 * 
	 */
	@RequestMapping("salarystrandupdate")
	public String searchSalaryStrand(){
		
		
		return "salarystrand_search";
	}
	/*
	 * 薪酬发放查询
	 * 
	 * 
	 * 
	 */
	@RequestMapping("/salarysearch")
	public String searchSalary(){
		return "salary_split";
	}

}
