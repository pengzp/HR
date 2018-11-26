package com.dao;

import java.util.List;

import com.pojo.JobIssue;

public interface IJobIssueDao {
	//查询招聘信息
	public List<JobIssue> listJobIssue();
	
}
