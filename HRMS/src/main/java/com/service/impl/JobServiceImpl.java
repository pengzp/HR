package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.IJobDao;
import com.pojo.Jobs;
import com.service.IJobService;
@Service("jobService")
public class JobServiceImpl implements IJobService {

	@Resource
	private IJobDao iJobDao;
	
	public IJobDao getiJobDao() {
		return iJobDao;
	}

	public void setiJobDao(IJobDao iJobDao) {
		this.iJobDao = iJobDao;
	}


	//查询所有的职位信息
	public List<Jobs> getJobList() {
		
		return iJobDao.getJobList();
	}

}
