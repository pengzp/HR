package com.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.pojo.Emps;
import com.service.IEmpService;


@Controller
public class EmployeeAction {

	@RequestMapping("/empManager")
	public String empManager(){
		
		return "empManager";
	}
	
	@Resource
	private IEmpService iEmpService;

	public IEmpService getiEmpService() {
		return iEmpService;
	}

	public void setiEmpService(IEmpService iEmpService) {
		this.iEmpService = iEmpService;
	}
	
	//添加员工信息
	@RequestMapping(value="/addEmp",method=RequestMethod.POST)
	@ResponseBody
	public String addEmp(HttpServletRequest request,@ModelAttribute("emps") Emps emps){
		
		Emps e = new Emps();
		
		if (1 == emps.getDept_id()) {
			e.setDept_id(1);
			e.setDept_name("财务部");
		}else if (2 == emps.getDept_id()) {
			e.setDept_id(2);
			e.setDept_name("人事部");
		}else if (3 == emps.getDept_id()) {
			e.setDept_id(3);
			e.setDept_name("研发部");
		}else if (4 == emps.getDept_id()) {
			e.setDept_id(4);
			e.setDept_name("安保部");
		}else if (5 == emps.getDept_id()) {
			e.setDept_id(5);
			e.setDept_name("法务部");
		}else if (6 == emps.getDept_id()) {
			e.setDept_id(5);
			e.setDept_name("总裁办");
		}
		
		if ("1".equals(emps.getDangan())) {
			e.setDangan("离职");
		}else if ("2".equals(emps.getDangan())) {
			e.setDangan("在职");
		}
		
		if (1==emps.getJob_id()) {
			e.setJob_id(1);
			e.setJob_name("职工");
		}else if (2 == emps.getJob_id()) {
			e.setJob_id(2);
			e.setJob_name("主管");
		}else if (3 ==emps.getJob_id()) {
			e.setJob_id(3);
			e.setJob_name("总监");
		}else if (4 == emps.getJob_id()) {
			e.setJob_id(4);
			e.setJob_name("经理");
		}else if (5 ==emps.getJob_id()) {
			e.setJob_id(5);
			e.setJob_name("总经理");
		}else if (6 == emps.getJob_id()) {
			e.setJob_id(5);
			e.setJob_name("CEO");
		}else if (7 == emps.getJob_id()) {
			e.setJob_id(5);
			e.setJob_name("董事");
		}
		
		e.setJob_num(emps.getJob_num());
		e.setEmp_name(emps.getEmp_name());
		e.setSex(emps.getSex());
		e.setEmail(emps.getEmail());
		e.setPhone(emps.getPhone());
		e.setAddress(emps.getAddress());
		System.out.println(emps.getIdcard());
		e.setIdcard(emps.getIdcard());
		
		e.setRegistry(emps.getRegistry());
		e.setPolity(emps.getPolity());
		e.setUniversity(emps.getUniversity());
		e.setSpecialty(emps.getSpecialty());
		e.setEducation(emps.getEducation());
		e.setSalary(emps.getSalary());
		e.setBanker(emps.getBanker());
		e.setBank(emps.getBank());
		e.setSocial_security(emps.getSocial_security());
		e.setBooker(emps.getBooker());
		e.setBooker_date(emps.getBooker_date());
		System.out.println(emps.getBooker_date());
		
		boolean flag = iEmpService.addEmps(e);
		
		if (flag) {
			return "登记成功";
		}else {
			return "登记失败";
		}
		
	}
	
	private String elist;
	
	
	public String getElist() {
		return elist;
	}

	public void setElist(String elist) {
		this.elist = elist;
	}

	@RequestMapping("/empCompound1")
	public String empCompound1(){
		
		return "empCompound1";
	}
	
	//查询档案状态
	@RequestMapping("/compound_dangan")
	@ResponseBody
	public String compound_Dangan(){
		
		Emps emps = new Emps();
		emps.setDangan("待审核");
		
		List<Emps> list = iEmpService.getDangEmps(emps);
		JSONArray array = new JSONArray();
		for (Emps e : list) {
			JSONObject obj = new JSONObject();
			obj.put("emp_id", e.getEmp_id());
			obj.put("emp_name", e.getEmp_name());
			obj.put("dept_name", e.getDept_name());
			obj.put("job_name", e.getJob_name());
			obj.put("job_num", e.getJob_num());
			obj.put("dangan", e.getDangan());
			array.add(obj);
		}
		
		elist = "{\"total\":"+list.size()+",\"rows\":"+array.toString()+"}";
		return elist;
	}
	
	
	
	
}
