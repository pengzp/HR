package com.dao;

import java.util.List;


import com.pojo.Emps;
import com.pojo.Image;

public interface IEmpDao {

	//添加员工记录，认识档案你登记
	public boolean addEmps(Emps emps);
	
	//查询档案状态的信息
	public List<Emps> getDangEmps(Emps emps);
	
	//修改审核信息
	public boolean updateEmps(Emps emps);
	
	//查询所有的列表信息
	public List<Emps> getEmpsList();
	
	//上传图片
	public boolean upload(Image image);
}
