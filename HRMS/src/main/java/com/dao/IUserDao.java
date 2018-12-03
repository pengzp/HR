package com.dao;

import java.util.List;

import com.pojo.UserRole;
import com.pojo.Users;
/**
 * 用户的操作
 * @author pengzhipeng
 *
 */
public interface IUserDao {

	//查询显示用户列表，分页
	public List<Users> getUserList(int curPage,int pageSize);
	//获取总记录数
	public int getCount();

	
	//添加用户
	public boolean addUsers(Users users);
	
	//删除用户
	public boolean delUsers(int id);
	//修改用户
	public boolean editUsers(Users users);
	
	//查询用户,用作登录
	public List<UserRole> getUsers(Users users);
}
