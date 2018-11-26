package com.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.alibaba.fastjson.annotation.JSONField;

public class JobIssue {
	private String deptname;
	private String jobstyle;
	private Integer jobno;
	private String jobsort;
	private String jobname;
	private Integer recruitnum;
	//局部日期转换格式
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@JSONField(format="yyyy-MM-dd")
	private Date enddate;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@JSONField(format="yyyy-MM-dd")
	private Date registerdate;
	private String jobdescribe;
	private String jobrequire;
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public String getJobstyle() {
		return jobstyle;
	}
	public void setJobstyle(String jobstyle) {
		this.jobstyle = jobstyle;
	}
	public Integer getJobno() {
		return jobno;
	}
	public void setJobno(Integer jobno) {
		this.jobno = jobno;
	}
	public String getJobsort() {
		return jobsort;
	}
	public void setJobsort(String jobsort) {
		this.jobsort = jobsort;
	}
	public String getJobname() {
		return jobname;
	}
	public void setJobname(String jobname) {
		this.jobname = jobname;
	}
	public Integer getRecruitnum() {
		return recruitnum;
	}
	public void setRecruitnum(Integer recruitnum) {
		this.recruitnum = recruitnum;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	public Date getRegisterdate() {
		return registerdate;
	}
	public void setRegisterdate(Date registerdate) {
		this.registerdate = registerdate;
	}
	public String getJobdescribe() {
		return jobdescribe;
	}
	public void setJobdescribe(String jobdescribe) {
		this.jobdescribe = jobdescribe;
	}
	public String getJobrequire() {
		return jobrequire;
	}
	public void setJobrequire(String jobrequire) {
		this.jobrequire = jobrequire;
	}
	
	
}
