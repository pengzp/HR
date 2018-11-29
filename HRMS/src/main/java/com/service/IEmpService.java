package com.service;

import java.util.List;

import com.pojo.Emps;

public interface IEmpService {

	//添加员工记录，认识档案你登记
	public boolean addEmps(Emps emps);
	
	//查询档案状态的信息
	public List<Emps> getDangEmps(Emps emps);
}
