package com.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.pojo.Jobs;
import com.service.IJobService;

@Controller
public class JobsManager {

	@Resource
	private IJobService iJobService;

	public IJobService getiJobService() {
		return iJobService;
	}

	public void setiJobService(IJobService iJobService) {
		this.iJobService = iJobService;
	}
	
	@RequestMapping("/jobManager")
	public String jobManager(){
		
		return "jobManager";
	}
	
	private String jlist;
	
	
	public String getJlist() {
		return jlist;
	}

	public void setJlist(String jlist) {
		this.jlist = jlist;
	}

	@RequestMapping("/getJobList")
	@ResponseBody
	public String getJobList(Jobs jobs){
		
		List<Jobs> list = iJobService.getJobList();
		JSONArray array = new JSONArray();
		for (Jobs jobs2 : list) {
			JSONObject obj = new JSONObject();
			obj.put("job_id", jobs2.getJob_id());
			obj.put("job_name", jobs2.getJob_name());
			array.add(jobs2);
		}
		
		jlist = "{\"total\":"+list.size()+",\"rows\":"+array.toString()+"}";
		return "";
	}
}
