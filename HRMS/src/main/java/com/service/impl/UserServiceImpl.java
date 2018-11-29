package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.IUserDao;
import com.pojo.Users;
import com.service.IUserService;
@Service("userService")
@Transactional
public class UserServiceImpl implements IUserService {

	@Resource
	private IUserDao iUserDao;
	
	public IUserDao getiUserDao() {
		return iUserDao;
	}

	public void setiUserDao(IUserDao iUserDao) {
		this.iUserDao = iUserDao;
	}

	
	public List<Users> getUserList(int curPage,int pageSize) {
		
		return iUserDao.getUserList(curPage, pageSize);
	}
	
	
	public int getCount() {
		
		return iUserDao.getCount();
	}

	public static void main(String[] args) {
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		IUserService userService = (IUserService) ctx.getBean("userService");
		
/*		List<Users> list = userService.getUserList();
		System.out.println(list.size());
*/	}

	//添加用户
	public boolean addUsers(Users users) {
		
		return iUserDao.addUsers(users);
	}

	//删除用户
	public boolean delUsers(int id) {
		
		return iUserDao.delUsers(id);
	}

	//修改用户
	public boolean editUsers(Users users) {
		
		
		return iUserDao.editUsers(users);
	}

	
}
