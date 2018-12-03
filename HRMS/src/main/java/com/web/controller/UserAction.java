package com.web.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.flash;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.runners.Parameterized.Parameter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.pojo.UserRole;
import com.pojo.Users;
import com.service.IUserService;
import com.util.MD5;

@Controller
public class UserAction {

	@Resource
	private IUserService iUserService;

	public IUserService getiUserService() {
		return iUserService;
	}

	public void setiUserService(IUserService iUserService) {
		this.iUserService = iUserService;
	}
	
	private String ulist;
	
	public String getUlist() {
		return ulist;
	}

	public void setUlist(String ulist) {
		this.ulist = ulist;
	}
	
	
	//查询用户
	@RequestMapping("/userlist")
	@ResponseBody
	public String getUserList(@RequestParam(value="page",required=false) String page,@RequestParam(value="rows",required=false) String rows){
		
		List<Users> list = iUserService.getUserList(Integer.parseInt(page),Integer.parseInt(rows));
		int count = iUserService.getCount();
		JSONArray array = new JSONArray();
		for (Users users : list) {
			JSONObject obj = new JSONObject();
			obj.put("id", users.getId());
			obj.put("usercode",users.getUsercode());
			obj.put("username", users.getUsername());
			obj.put("password", users.getPassword());
			obj.put("salt", users.getSalt());
			obj.put("locked", users.getLocked());
			array.add(obj);
		}
		
		System.out.println(count);
		ulist = "{\"total\":"+count+",\"rows\":"+array.toString()+"}";
		
		
		return ulist;
	}
	
	
	@RequestMapping("/addUsers")
	@ResponseBody
	public String addUsers(Users users){
		
		boolean flag = iUserService.addUsers(users);
		
		if (flag) {
			return "添加用户成功";
		}else {
			return "添加用户失败";
		}
		
	}
	
	@RequestMapping("/delUsers")
	@ResponseBody
	public String delUsers(@RequestParam String id){
		System.out.println(id);
		String[] uid=id.split(",");
		System.out.println(uid);
		boolean flag = false;
		for (int i = 0; i < uid.length; i++){
			flag = iUserService.delUsers(Integer.parseInt(uid[i]));
		}
		
		return null;
	}
	
	@RequestMapping("/editUsers")
	@ResponseBody
	public Object editUsers(@ModelAttribute("users") Users users){
		
		boolean flag = iUserService.editUsers(users);
		
		if (flag) {
			return "修改成功";
		}else {
			return "修改失败";
		}
		
	}
	
	
	@RequestMapping("/getUsers")
	@ResponseBody
	public Object getUsers(HttpServletRequest request,HttpServletResponse response,@RequestParam String usercode,@RequestParam String password){
		System.out.println(usercode);
		System.out.println(password);
		
		Users users = new Users();
		users.setUsercode(usercode);
		users.setPassword(MD5.md5(password));
		System.out.println(MD5.md5(password));
		String strCode=request.getParameter("code");
		System.out.println(strCode);
		// 获取会话中保存的验证码
		String sessionCode = request.getSession().getAttribute("checkCode").toString();
		System.out.println(sessionCode);
		
		
		List<UserRole> list = iUserService.getUsers(users);
		HttpSession session = request.getSession();
		System.out.println(list.size());
		
		if (strCode.equalsIgnoreCase(sessionCode) && list.size() > 0) {
			for (UserRole userRole : list) {
				
				session.setAttribute("uname", userRole.getRole().getName());
			}
			return JSONArray.toJSONString("true");
		}else {
			return JSONArray.toJSONString("false");
		}
			
	}
	
	
	//定义推出登录
	@RequestMapping("/outlogin")
	public String outLogin(HttpSession session){
		//清楚session
		session.invalidate();
		return  "login2";
	}
	
}
