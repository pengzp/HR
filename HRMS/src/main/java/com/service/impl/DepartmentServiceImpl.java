package com.service.impl;

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.IDepartment;
import com.pojo.Department;
import com.service.DepartmentService;

@Service("departmentService")
@Transactional
public class DepartmentServiceImpl implements DepartmentService {
	@Resource
	private IDepartment iDpartment;
	
	
	public IDepartment getiDpartment() {
		return iDpartment;
	}


	public void setiDpartment(IDepartment iDpartment) {
		this.iDpartment = iDpartment;
	}


	@Override
	public Department getDepartment(int id) {
		// TODO Auto-generated method stub
		return iDpartment.getDepartment(id);
	}
	
	public static void main(String[] args) {
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		DepartmentService userService = (DepartmentService) ctx.getBean("departmentService");
		
		Department department = userService.getDepartment(111);
		System.out.println(department.getBasic_money());
	}


}
