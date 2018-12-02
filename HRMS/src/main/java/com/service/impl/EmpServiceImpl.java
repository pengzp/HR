package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.IEmpDao;
import com.pojo.Emps;
import com.pojo.Image;
import com.service.IEmpService;
@Service("empService")
@Transactional
public class EmpServiceImpl implements IEmpService {

	@Resource
	private IEmpDao iEmpDao;
	
	public IEmpDao getiEmpDao() {
		return iEmpDao;
	}

	public void setiEmpDao(IEmpDao iEmpDao) {
		this.iEmpDao = iEmpDao;
	}

	public boolean addEmps(Emps emps) {
		
		
		return iEmpDao.addEmps(emps);
	}

	
	public List<Emps> getDangEmps(Emps emps) {
		
		return iEmpDao.getDangEmps(emps);
	}

	public static void main(String[] args) {
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		IEmpService empService = (IEmpService) ctx.getBean("empService");
		
		Emps emps = new Emps();
		emps.setDangan("待审核");
		List<Emps> list = empService.getDangEmps(emps);
		System.out.println(list.size());
	}

	//修改审核
	public boolean updateEmps(Emps emps) {
		
		return iEmpDao.updateEmps(emps);
	}

	//查询列表
	public List<Emps> getEmpsList() {
		
		return iEmpDao.getEmpsList();
	}

	//上传图片
	public boolean upload(Image image) {
		
		return iEmpDao.upload(image);
	}

	
}
