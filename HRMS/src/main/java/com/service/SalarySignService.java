package com.service;

import java.util.List;

import com.pojo.Sign;

public interface SalarySignService {
		//薪酬登记
		public boolean addSalarySign(Sign sign);
		//薪酬标准复核查询
		public Sign  getSignMessage();
		//薪酬标准复核修改
		public boolean updateSign(Sign sign);
		//薪酬标准查询
		public List<Sign> getSigns(Sign sign);
		//薪酬标准删除
		public boolean delData(int id);
		//薪酬标准修改查询
		public List<Sign> getData(int id);

}
