package com.web.controller;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.xml.ws.Action;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.pojo.JobIssue;
import com.service.IJobIssueService;
@Controller
public class JobIssueAction {
	private Logger logger=Logger.getLogger(JobIssueAction.class);
	@Resource
	private IJobIssueService iJobIssueService;
	public IJobIssueService getiJobIssueService() {
		return iJobIssueService;
	}
	public void setiJobIssueService(IJobIssueService iJobIssueService) {
		this.iJobIssueService = iJobIssueService;
	}
	@RequestMapping("/jumplistjsp")
	public String jumplist(){
		
		return "jobissue";
	}
	@RequestMapping(value="/listJobIssue")
	@ResponseBody
	public String listJobIssue(HttpServletRequest request){
		System.out.println("listJobIssue");
		List<JobIssue> list = iJobIssueService.listJobIssue();
		JSONArray array=new JSONArray();
		for (JobIssue jobissue : list) {
			JSONObject object=new JSONObject();
			object.put("deptname",jobissue.getDeptname());
			object.put("jobstyle",jobissue.getJobstyle());
			object.put("jobno",jobissue.getJobno());
			object.put("jobsort",jobissue.getJobsort());
			object.put("jobname",jobissue.getJobname());
			object.put("recruitnum",jobissue.getRecruitnum());
			object.put("enddate",jobissue.getEnddate());
			object.put("registerdate",jobissue.getRegisterdate());
			object.put("jobdescribe",jobissue.getJobdescribe());
			object.put("jobrequire",jobissue.getJobrequire());
			array.add(object);
		}
		System.out.println(list.size());
		request.setAttribute("array", array);
		return JSONArray.toJSONString(list);
	}
	/*@RequestMapping(value="/listJobIssue")
	@ResponseBody
	public ModelAndView listJobIssue(HttpServletRequest request){
		System.out.println("listJobIssue");
		List<JobIssue> list = iJobIssueService.listJobIssue();
		JSONArray array=new JSONArray();
		Map map=new HashMap();
		for (JobIssue jobissue : list) {
			JSONObject object=new JSONObject();
			//Map map=new HashMap();
			object.put("deptname",jobissue.getDeptname());
			object.put("jobstyle",jobissue.getJobstyle());
			object.put("jobno",jobissue.getJobno());
			object.put("jobsort",jobissue.getJobsort());
			object.put("jobname",jobissue.getJobname());
			object.put("recruitnum",jobissue.getRecruitnum());
			object.put("enddate",jobissue.getEnddate());
			object.put("registerdate",jobissue.getRegisterdate());
			object.put("jobdescribe",jobissue.getJobdescribe());
			object.put("jobrequire",jobissue.getJobrequire());
			array.add(object);
		}
		request.setAttribute("array", array);
		map.put("jobissuelist","{\"total\":"+list.size()+",\"rows\":"+array.toString()+"}");
		ModelAndView mav=new ModelAndView("jobissue",map);
		return mav;
		//System.out.println(list.size());
		//request.setAttribute("array", array);
		//return JSONArray.toJSONString(list);
	}*/
	//
	private String hlist;
	public String getHlist() {
		return hlist;
	}
	public void setHlist(String hlist) {
		this.hlist = hlist;
	}
	/*@Action(value="houseListAction",results={@Result(type="json",name="success",params={"root","hlist"})})	
	public String HouseList() throws IOException{
		
		List<JobIssue> list = iJobIssueService.listJobIssue();
		JSONArray array = new JSONArray();
		for (JobIssue jobissue : list) {
			for (JobIssue jobissue : list) {
				JSONObject object=new JSONObject();
				//Map map=new HashMap();
				object.put("deptname",jobissue.getDeptname());
				object.put("jobstyle",jobissue.getJobstyle());
				object.put("jobno",jobissue.getJobno());
				object.put("jobsort",jobissue.getJobsort());
				object.put("jobname",jobissue.getJobname());
				object.put("recruitnum",jobissue.getRecruitnum());
				object.put("enddate",jobissue.getEnddate());
				object.put("registerdate",jobissue.getRegisterdate());
				object.put("jobdescribe",jobissue.getJobdescribe());
				object.put("jobrequire",jobissue.getJobrequire());
				array.add(object);
			}
		}
		
		int total = array.size();
		hlist = "{\"total\":"+total+",\"rows\":"+array.toString()+"}";

		
		ServletActionContext.getResponse().setContentType("textml;charset=UTF-8");
		ServletActionContext.getResponse().getWriter().println(hlist);
		
		return null;
	}*/

}
