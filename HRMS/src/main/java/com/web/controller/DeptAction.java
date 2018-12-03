package com.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.pojo.Dept;
import com.service.IDeptService;

@Controller
public class DeptAction {

	
	
	//定义一个跳转到组织结构管理的页面里
	@RequestMapping("/deptManager")
	public String getDeptManager(){
		
		return "deptManager";
	}
	
	@Resource
	private IDeptService iDeptService;
	
	
	public IDeptService getiDeptService() {
		return iDeptService;
	}


	public void setiDeptService(IDeptService iDeptService) {
		this.iDeptService = iDeptService;
	}

	private String blist;
	
	
	public String getBlist() {
		return blist;
	}


	public void setBlist(String blist) {
		this.blist = blist;
	}


	//查询所有的部门信息
	@RequestMapping("/getDeptList")
	@ResponseBody
	public String getDeptList(){
		
		List<Dept> list = iDeptService.getDeptList();
		JSONArray array = new JSONArray();
		for (Dept dept : list) {
			JSONObject obj = new JSONObject();
			obj.put("dept_id", dept.getDept_id());
			obj.put("dept_name", dept.getDept_name());
			array.add(obj);
		}
		
		blist = "{\"total\":"+list.size()+",\"rows\":"+array.toString()+"}";
		return blist;
	}
	
	//添加部门信息
	@RequestMapping("/addDept")
	@ResponseBody
	public String addDept(Dept dept){
		
		boolean flag = iDeptService.addDept(dept);
		if (flag) {
			return "添加成功";
		}else {
			return "添加失败";
		}
		
		
	}
}
