package com.service;

import com.pojo.Sign;

public interface SalarySignService {
		//薪酬登记
		public boolean addSalarySign(Sign sign);
		//薪酬标准复核查询
		public Sign  getSignMessage(int salary_id);
		//薪酬标准复核修改
		public boolean updateSign(Sign sign);

}
