package com.web.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.pojo.Emps;
import com.pojo.Image;
import com.service.IEmpService;
import com.util.BookBuyDate;


@Controller
public class EmployeeAction {

	@RequestMapping("/empManager")
	public String empManager(){
		
		return "empManager";
	}
	
	public Logger getLogger() {
		return logger;
	}

	public void setLogger(Logger logger) {
		this.logger = logger;
	}

	private Logger logger = Logger.getLogger(EmployeeAction.class);
	
	@Resource
	private IEmpService iEmpService;

	public IEmpService getiEmpService() {
		return iEmpService;
	}

	public void setiEmpService(IEmpService iEmpService) {
		this.iEmpService = iEmpService;
	}
	
	//添加员工信息
	@RequestMapping(value="/addEmp",method=RequestMethod.POST)
	@ResponseBody
	public String addEmp(HttpServletRequest request,@ModelAttribute("emps") Emps emps){
		
		Emps e = new Emps();
		
		
		if (1 == emps.getDept_id()) {
			e.setDept_id(1);
			e.setDept_name("财务部");
		}else if (2 == emps.getDept_id()) {
			e.setDept_id(2);
			e.setDept_name("人事部");
		}else if (3 == emps.getDept_id()) {
			e.setDept_id(3);
			e.setDept_name("研发部");
		}else if (4 == emps.getDept_id()) {
			e.setDept_id(4);
			e.setDept_name("安保部");
		}else if (5 == emps.getDept_id()) {
			e.setDept_id(5);
			e.setDept_name("法务部");
		}else if (6 == emps.getDept_id()) {
			e.setDept_id(5);
			e.setDept_name("总裁办");
		}
		
		if ("1".equals(emps.getDangan())) {
			e.setDangan("离职");
		}else if ("2".equals(emps.getDangan())) {
			e.setDangan("在职");
		}
		
		if (1==emps.getJob_id()) {
			e.setJob_id(1);
			e.setJob_name("职工");
		}else if (2 == emps.getJob_id()) {
			e.setJob_id(2);
			e.setJob_name("主管");
		}else if (3 ==emps.getJob_id()) {
			e.setJob_id(3);
			e.setJob_name("总监");
		}else if (4 == emps.getJob_id()) {
			e.setJob_id(4);
			e.setJob_name("经理");
		}else if (5 ==emps.getJob_id()) {
			e.setJob_id(5);
			e.setJob_name("总经理");
		}else if (6 == emps.getJob_id()) {
			e.setJob_id(5);
			e.setJob_name("CEO");
		}else if (7 == emps.getJob_id()) {
			e.setJob_id(5);
			e.setJob_name("董事");
		}
		
		e.setJob_num(emps.getJob_num());
		e.setEmp_name(emps.getEmp_name());
		e.setSex(emps.getSex());
		e.setEmail(emps.getEmail());
		e.setPhone(emps.getPhone());
		e.setAddress(emps.getAddress());
		System.out.println(emps.getIdcard());
		e.setIdcard(emps.getIdcard());
		
		e.setRegistry(emps.getRegistry());
		e.setPolity(emps.getPolity());
		e.setUniversity(emps.getUniversity());
		e.setSpecialty(emps.getSpecialty());
		e.setEducation(emps.getEducation());
		e.setSalary(emps.getSalary());
		e.setBanker(emps.getBanker());
		e.setBank(emps.getBank());
		e.setSocial_security(emps.getSocial_security());
		e.setBooker(emps.getBooker());
		e.setBooker_date(emps.getBooker_date());
		System.out.println(emps.getBooker_date());
		
		boolean flag = iEmpService.addEmps(e);
		
		if (flag) {
			return "登记成功";
		}else {
			return "登记失败";
		}
		
	}
	
	private String elist;
	
	
	public String getElist() {
		return elist;
	}

	public void setElist(String elist) {
		this.elist = elist;
	}

	@RequestMapping("/empCompound1")
	public String empCompound1(){
		
		return "empCompound1";
	}
	
	//查询档案状态
	@RequestMapping("/compound_dangan")
	@ResponseBody
	public String compound_Dangan(){
		
		Emps emps = new Emps();
		emps.setDangan("待审核");
		
		List<Emps> list = iEmpService.getDangEmps(emps);
		JSONArray array = new JSONArray();
		for (Emps e : list) {
			JSONObject obj = new JSONObject();
			obj.put("emp_id", e.getEmp_id());
			obj.put("emp_name", e.getEmp_name());
			obj.put("dept_id", e.getDept_id());
			obj.put("dept_name", e.getDept_name());
			obj.put("job_id", e.getJob_id());
			obj.put("job_name", e.getJob_name());
			obj.put("job_num", e.getJob_num());
			obj.put("dangan", e.getDangan());
			obj.put("sex", e.getSex());
			obj.put("email", e.getEmail());
			obj.put("phone", e.getPhone());
			obj.put("idcard", e.getIdcard());
			obj.put("address", e.getAddress());
			obj.put("registry", e.getRegistry());
			obj.put("university", e.getUniversity());
			obj.put("Education", e.getEducation());
			obj.put("specialty", e.getSpecialty());
			obj.put("salary", e.getSalary());
			obj.put("bank", e.getBank());
			obj.put("banker", e.getBanker());
			obj.put("booker", e.getBooker());
			obj.put("booker_date", BookBuyDate.DatetoString(e.getBooker_date()));
			obj.put("social_security", e.getSocial_security());
			obj.put("content", e.getContent());
			obj.put("family", e.getFamily());
			obj.put("polity", e.getPolity());
			
			array.add(obj);
		}
		
		elist = "{\"total\":"+list.size()+",\"rows\":"+array.toString()+"}";
		return elist;
	}
	
	
	//修改信息
	@RequestMapping("/updateEmps")
	@ResponseBody
	public String updateEmps(Emps emps){
		
		boolean flag = iEmpService.updateEmps(emps);
		
		if (flag) {
			return "审核修改成功";
		}
		return null;
	}
	
	private String elist2;
	
	public String getElist2() {
		return elist2;
	}

	public void setElist2(String elist2) {
		this.elist2 = elist2;
	}

	
	
	//查询员工jsp页面
	@RequestMapping("/empQueryList")
	public String queryEmpList(){
		
		return "empQueryList";
	}
	
	
	//查询所有的列表
	@RequestMapping("/queryEmps")
	@ResponseBody
	public String queryEmps(){
		
		List<Emps> list = iEmpService.getEmpsList();
		
		JSONArray array = new JSONArray();
		for (Emps e : list) {
			JSONObject obj = new JSONObject();
			obj.put("emp_id", e.getEmp_id());
			obj.put("emp_name", e.getEmp_name());
			obj.put("dept_id", e.getDept_id());
			obj.put("dept_name", e.getDept_name());
			obj.put("job_id", e.getJob_id());
			obj.put("job_name", e.getJob_name());
			obj.put("job_num", e.getJob_num());
			obj.put("dangan", e.getDangan());
			obj.put("sex", e.getSex());
			obj.put("email", e.getEmail());
			obj.put("phone", e.getPhone());
			obj.put("idcard", e.getIdcard());
			obj.put("address", e.getAddress());
			obj.put("registry", e.getRegistry());
			obj.put("university", e.getUniversity());
			obj.put("Education", e.getEducation());
			obj.put("specialty", e.getSpecialty());
			obj.put("salary", e.getSalary());
			obj.put("bank", e.getBank());
			obj.put("banker", e.getBanker());
			obj.put("booker", e.getBooker());
			obj.put("booker_date", BookBuyDate.DatetoString(e.getBooker_date()));
			obj.put("social_security", e.getSocial_security());
			obj.put("content", e.getContent());
			obj.put("family", e.getFamily());
			obj.put("polity", e.getPolity());
			
			array.add(obj);
		}
		
		elist2 = "{\"total\":"+list.size()+",\"rows\":"+array.toString()+"}";
		return elist2;
		
	}
	
	//上传图片
	@RequestMapping(value="/uploadImage",method=RequestMethod.POST)
	@ResponseBody
	public String uploadImage(@RequestParam(value ="nfile",required=false) MultipartFile  articleFile,HttpServletRequest request) throws IllegalStateException, IOException{
		
		String originalFilename = articleFile.getOriginalFilename();//原文件名
		logger.info("原文件名 ============== > "+originalFilename);
		System.out.println(File.separator);
		String path = request.getServletContext().getRealPath("static" + File.separator + "upload");
		logger.info("上传文件路径 ============== > "+path);
		
		String prefix=FilenameUtils.getExtension(originalFilename);//原文件后缀     
        logger.debug("原文件后缀     ============> " + prefix);
        
        /**
         * 上传文件判断
         */
        int filesize = 500000;//定义上传文件大小
        logger.debug("上传文件大小============> " + articleFile.getSize());
        if(articleFile.getSize() >  filesize){//上传大小不得超过 500k
        	request.setAttribute("uploadFileError", " * 上传大小不得超过 500k");
        	return "useradd";
        }else if(prefix.equalsIgnoreCase("jpg") || prefix.equalsIgnoreCase("png") 
        		|| prefix.equalsIgnoreCase("jpeg") || prefix.equalsIgnoreCase("pneg")){//上传图片格式不正确
        	String fileName = System.currentTimeMillis()+UUID.randomUUID().toString()+".jpg";  
            logger.debug("new fileName======== " + fileName);
            File targetFile = new File(path, fileName);  //最终上传文件位置与文件名
            if(!targetFile.exists()){   //如果不存在，则创建目录 
                targetFile.mkdirs();  
            }
            Image image = new Image();
            image.setImg_name(fileName);
            image.setUrl(path);
            
            //保存  
            articleFile.transferTo(targetFile);  //也可做个异常处理
            boolean flag = iEmpService.upload(image);
            return "true";
        }else{
        	System.out.println("* 上传图片格式不正确");
        	return "false";
        }
		
	}
}
