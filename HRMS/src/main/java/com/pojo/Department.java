package com.pojo;

import java.io.Serializable;

public class Department implements Serializable {
	//序号
	private Integer id;
	//一级机构
	private String first_dept;
	//二级机构
	private String second_dept;
	//总人数
	private Integer sum_man;
	//基本工资
	private Double basic_money;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFirst_dept() {
		return first_dept;
	}
	public void setFirst_dept(String first_dept) {
		this.first_dept = first_dept;
	}
	public String getSecond_dept() {
		return second_dept;
	}
	public void setSecond_dept(String second_dept) {
		this.second_dept = second_dept;
	}
	public Integer getSum_man() {
		return sum_man;
	}
	public void setSum_man(Integer sum_man) {
		this.sum_man = sum_man;
	}
	public Double getBasic_money() {
		return basic_money;
	}
	public void setBasic_money(Double basic_money) {
		this.basic_money = basic_money;
	}
	
}
