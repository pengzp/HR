package com.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.junit.runners.Parameterized.Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
		Map map = new HashMap();
		map.put("val", a);
		
		ModelAndView modelAndView = new ModelAndView("salarysigner",map);
		
		return  modelAndView;
	}
	/*
	 * 薪酬复核页面
	 * 
	 */
	@RequestMapping("/Salarysignfuhe")
	public String salarySignfuhe(@RequestParam(value="salary_id",required=true) Integer salary_id){
		
		System.out.println("------------------------"+salary_id);
		return  "salaryfuhe";
	}
	
	

}
