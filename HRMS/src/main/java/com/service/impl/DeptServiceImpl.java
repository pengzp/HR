package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.IDeptDao;
import com.pojo.Dept;
import com.service.IDeptService;
@Service("deptService")
@Transactional
public class DeptServiceImpl implements IDeptService {

	@Resource
	private IDeptDao iDeptDao;
	
	public IDeptDao getiDeptDao() {
		return iDeptDao;
	}

	public void setiDeptDao(IDeptDao iDeptDao) {
		this.iDeptDao = iDeptDao;
	}

	
	public List<Dept> getDeptList() {
		
		return iDeptDao.getDeptList();
	}
	
	public boolean addDept(Dept dept){
		
		return iDeptDao.addDept(dept);
	}

}
