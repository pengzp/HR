package com.service;

import java.util.List;

import com.pojo.Jobs;

public interface IJobService {

	//查询所有的职位
	public List<Jobs> getJobList();
}
