package com.pojo;

import java.io.Serializable;

public class Sign implements Serializable{
	//薪酬标注编号
	private Integer salary_id;
	//薪酬标准名称
	private String salary_strandname;
	//薪资总额
	private Integer sum_money;
	//制定人
	private String maker;
	//登记人
	private String signer;
	//登记时间
	private String sign_time;
	//审核意见
	private String  compare;
	//修改原因
	private String chenge_reseaon;
	//状态
	private String check_status;
	//基本工资
	private Integer basic_salary;
	//绩效奖金
	private Integer jixiao_jiangjin;
	//交通补助
	private Integer trans_help;
	//通讯补助
	private Integer relation_help;
	//餐补
	private Integer food_help;
	//住房补助
	private Integer house_help;
	//出差补助
	private Integer	chuchai_help;
	//加班补助
	private Integer working_help;
	public Integer getSalary_id() {
		return salary_id;
	}
	public void setSalary_id(Integer salary_id) {
		this.salary_id = salary_id;
	}
	public String getSalary_strandname() {
		return salary_strandname;
	}
	public void setSalary_strandname(String salary_strandname) {
		this.salary_strandname = salary_strandname;
	}
	
	public Integer getSum_money() {
		return sum_money;
	}
	public void setSum_money(Integer sum_money) {
		this.sum_money = sum_money;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public String getSigner() {
		return signer;
	}
	public void setSigner(String signer) {
		this.signer = signer;
	}
	public String getSign_time() {
		return sign_time;
	}
	public void setSign_time(String sign_time) {
		this.sign_time = sign_time;
	}
	public String getCompare() {
		return compare;
	}
	public void setCompare(String compare) {
		this.compare = compare;
	}
	public String getChenge_reseaon() {
		return chenge_reseaon;
	}
	public void setChenge_reseaon(String chenge_reseaon) {
		this.chenge_reseaon = chenge_reseaon;
	}
	public String getCheck_status() {
		return check_status;
	}
	public void setCheck_status(String check_status) {
		this.check_status = check_status;
	}
	public Integer getBasic_salary() {
		return basic_salary;
	}
	public void setBasic_salary(Integer basic_salary) {
		this.basic_salary = basic_salary;
	}
	public Integer getJixiao_jiangjin() {
		return jixiao_jiangjin;
	}
	public void setJixiao_jiangjin(Integer jixiao_jiangjin) {
		this.jixiao_jiangjin = jixiao_jiangjin;
	}
	public Integer getTrans_help() {
		return trans_help;
	}
	public void setTrans_help(Integer trans_help) {
		this.trans_help = trans_help;
	}
	public Integer getRelation_help() {
		return relation_help;
	}
	public void setRelation_help(Integer relation_help) {
		this.relation_help = relation_help;
	}
	public Integer getFood_help() {
		return food_help;
	}
	public void setFood_help(Integer food_help) {
		this.food_help = food_help;
	}
	public Integer getHouse_help() {
		return house_help;
	}
	public void setHouse_help(Integer house_help) {
		this.house_help = house_help;
	}
	public Integer getChuchai_help() {
		return chuchai_help;
	}
	public void setChuchai_help(Integer chuchai_help) {
		this.chuchai_help = chuchai_help;
	}
	public Integer getWorking_help() {
		return working_help;
	}
	public void setWorking_help(Integer working_help) {
		this.working_help = working_help;
	}
	
	
	

}
