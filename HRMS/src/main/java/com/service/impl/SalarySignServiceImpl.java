package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.SalarySign;

import com.pojo.Sign;

import com.service.SalarySignService;
@Service("salarySignService")

public class SalarySignServiceImpl implements SalarySignService {
	
	@Resource
	private SalarySign salarySign;
	

	public SalarySign getSalarySign() {
		return salarySign;
	}


	public void setSalarySign(SalarySign salarySign) {
		this.salarySign = salarySign;
	}

	/*
	 * 薪酬标准登记
	 * (non-Javadoc)
	 * @see com.service.SalarySignService#addSalarySign(com.pojo.Sign)
	 */
	@Override
	public boolean addSalarySign(Sign sign) {
		
		return salarySign.addSalarySign(sign);
	}
	/*
	 * 测试方法
	 * 
	 * 
	 */
//	@Transactional
//	public static void main(String[] args) {
//		
//
//		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
//		
//		SalarySignService userService = (SalarySignService) ctx.getBean("salarySignService");
//
//		Sign sign1 = new Sign();
//		sign1.setSalary_id(111);
//		sign1.setCheck_status("审核中");
//		
//		
//		Sign sign =userService.getSigns(sign1);
//		System.out.println(sign.getSalary_strandname());
//		
//		
//		
//		
//		
//		
//		
//		
//	}

	/*
	 * 薪酬复核查询
	 * (non-Javadoc)
	 * @see com.service.SalarySignService#getSignMessage(int)
	 */
	@Override
	public Sign getSignMessage() {
		
		return salarySign.getSignMessage();
	}
	/*
	 * 薪酬复核修改
	 * 
	 * (non-Javadoc)
	 * @see com.service.SalarySignService#updateSign(java.lang.String)
	 */

	@Override
	public boolean updateSign(Sign sign) {
		
		return salarySign.updateSign(sign);
	}

	/*
	 * 薪酬复核查询
	 * 
	 * 
	 */
	@Override
	public List<Sign> getSigns(Sign sign) {
		
		return salarySign.getSigns(sign);
	}

	/*
	 * 薪酬标准删除
	 * 
	 * (non-Javadoc)
	 * @see com.service.SalarySignService#delData(int)
	 */
	@Override
	public boolean delData(int id) {
		
		return salarySign.delData(id);
	}
	/*
	 * 
	 *薪酬标准修改查询
	 * (non-Javadoc)
	 * @see com.service.SalarySignService#getData(int)
	 */

	@Override
	public List<Sign> getData(int id) {
		// TODO Auto-generated method stub
		return salarySign.getData(id);
	}

}
