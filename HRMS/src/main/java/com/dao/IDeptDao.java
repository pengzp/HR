package com.dao;

import java.util.List;

import com.pojo.Dept;

public interface IDeptDao {

	//查询部门信息
	public List<Dept> getDeptList();
	
	//添加部门
	public boolean addDept(Dept dept);
}
