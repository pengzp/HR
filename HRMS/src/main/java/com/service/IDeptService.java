package com.service;

import java.util.List;

import com.pojo.Dept;

public interface IDeptService {

	//查询所有的部门信息
	public List<Dept> getDeptList();
	
	public boolean addDept(Dept dept);
}
