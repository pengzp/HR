package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.IJobIssueDao;
import com.pojo.JobIssue;
import com.service.IJobIssueService;
@Service("jobissueService")
@Transactional
public class JobIssueServiceImpl implements IJobIssueService{
	@Resource
	private IJobIssueDao iJobIssueDao;
	
	public IJobIssueDao getiJobIssueDao() {
		return iJobIssueDao;
	}
	public void setiJobIssueDao(IJobIssueDao iJobIssueDao) {
		this.iJobIssueDao = iJobIssueDao;
	}
	public List<JobIssue> listJobIssue(){
		
		
		return iJobIssueDao.listJobIssue();
	}
	
}
