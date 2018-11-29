package com.pojo;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.alibaba.fastjson.annotation.JSONField;

public class Emps {

	 private int emp_id;    //员工id           
	   
	 private String emp_name;         //员工姓名  
	 private int sex;               //性别
	 private String email;             
	 private String phone;    
	 private String idcard;           //身份证号
	 private String address;      //住址
	 private String registry;       //户籍  
	 private String university;       //毕业大学
	 private String Education;        //学历 
	 private String specialty;        //专业 
	 private int salary;             //薪酬标准
	 private String bank;             //银行账号 
	 private String booker;			//登记人
	 
	 
	 private Date booker_date;  //登记时间
	 
	 private String social_security;  //社保账号
	 private String banker;      //开户银行
	 private String content;     //个人履历
	 private String family;      //家庭关系
	 private String polity;      //政治面貌
	 
	 
	 private int dept_id;    //部门id 
	 private String dept_name;    //bumen名称
	 
	 private int job_id;      //职位id      
	 private int job_num;           //职位编码
	 private String job_name;       //职位名称  
	 private String dangan;
	 
	public String getDangan() {
		return dangan;
	}
	public void setDangan(String dangan) {
		this.dangan = dangan;
	}
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public int getDept_id() {
		return dept_id;
	}
	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}
	public int getJob_id() {
		return job_id;
	}
	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	public int getJob_num() {
		return job_num;
	}
	public void setJob_num(int job_num) {
		this.job_num = job_num;
	}
	public String getJob_name() {
		return job_name;
	}
	public void setJob_name(String job_name) {
		this.job_name = job_name;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRegistry() {
		return registry;
	}
	public void setRegistry(String registry) {
		this.registry = registry;
	}
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
	public String getEducation() {
		return Education;
	}
	public void setEducation(String education) {
		Education = education;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public String getBooker() {
		return booker;
	}
	public void setBooker(String booker) {
		this.booker = booker;
	}
	public Date getBooker_date() {
		return booker_date;
	}
	public void setBooker_date(Date booker_date) {
		this.booker_date = booker_date;
	}
	
	public String getSocial_security() {
		return social_security;
	}
	public void setSocial_security(String social_security) {
		this.social_security = social_security;
	}
	public String getBanker() {
		return banker;
	}
	public void setBanker(String banker) {
		this.banker = banker;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFamily() {
		return family;
	}
	public void setFamily(String family) {
		this.family = family;
	}
	public String getPolity() {
		return polity;
	}
	public void setPolity(String polity) {
		this.polity = polity;
	}
	 
	 
}
