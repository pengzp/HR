package com.web.controller;

import java.util.HashMap;
import java.util.List;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
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
	 * 
	 * 进入薪酬查询页面
	 * 
	 * 
	 * 
	 */
	@RequestMapping("salarystrandupdate")
	public String intoPage1(){
		
		return "salarystrand_search";
	}
	/*
	 * 薪酬标准查询
	 * 
	 * 
	 * 
	 */
	@RequestMapping(value="chaxun",method=RequestMethod.POST)
	@ResponseBody
	public String searchSalaryStrand(HttpServletRequest request,@ModelAttribute(value="sign") Sign sign){
		System.out.println(sign.getSalary_id()+"-----------------------------");
		System.out.println(sign.getCheck_status());
		
		Map< String, Object> map = new HashMap<String, Object>();
		List<Sign> list = salarySignService.getSigns(sign);
		
		/*System.out.println(sign2.getSalary_strandname());*/
		
		/*JSONArray array = new JSONArray();
		for (Sign sign2 : list) {
			JSONObject obj = new JSONObject();
			obj.put("salary_id", sign2.getSalary_id());
			obj.put("salary_strandname", sign2.getSalary_strandname());
			obj.put("sign_time", sign2.getSign_time());
			array.add(obj);
		}*/
		
		
/*		model.addAttribute("sign2",sign2);
*/		
/*		return "salarystrand_search";*/
/*		map.put("salary_strandname()", sign2.getSalary_strandname());
*/		
		
		return JSONObject.toJSONString(list);

	}
	/*
	 * 
	 * 薪酬标准删除
	 * 
	 * 
	 * 
	 * 
	 */
	@RequestMapping(value="delData",method=RequestMethod.POST)
	public String shanchuData(HttpServletRequest request,@ModelAttribute(value="salary_id") Integer salary_id ){
		System.out.println("-----------------------"+salary_id);
		boolean flag = salarySignService.delData(salary_id);
		
		
		System.out.println("------------"+flag);
		
		
		
		
		return "salarystrand_search";
		
		
		
		
	}
	/*
	 * 标准修改查询
	 * 
	 * 
	 */
	@RequestMapping(value="updateData",method=RequestMethod.POST)
	@ResponseBody
	public String getData(HttpServletRequest request,@ModelAttribute(value="salary_id") Integer salary_id){
		System.out.println(salary_id+"--------------------------");
		Map< String, Object> map = new HashMap<String, Object>();
		List<Sign> list = salarySignService.getData(salary_id);
		
		
		
		
		return JSONObject.toJSONString(list);
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
