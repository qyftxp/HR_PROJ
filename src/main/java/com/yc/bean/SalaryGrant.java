package com.yc.bean;

import java.io.Serializable;

public class SalaryGrant implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer sdt_id ;// sdt_id" : 主键，自动增长列 
	private String standard_id ;//standard_id" : 薪酬标准单编号  
	private String standard_name ;// standard_name" : 薪酬标准单名称 
	private Integer item_id ;// item_id" : 薪酬项目序号
	private String item_name ;//item_name" : 薪酬项目名称  
	private Double salary ;// salary" : 薪酬金额
	public Integer getSdt_id() {
		return sdt_id;
	}
	public void setSdt_id(Integer sdt_id) {
		this.sdt_id = sdt_id;
	}
	public String getStandard_id() {
		return standard_id;
	}
	public void setStandard_id(String standard_id) {
		this.standard_id = standard_id;
	}
	public String getStandard_name() {
		return standard_name;
	}
	public void setStandard_name(String standard_name) {
		this.standard_name = standard_name;
	}
	public Integer getItem_id() {
		return item_id;
	}
	public void setItem_id(Integer item_id) {
		this.item_id = item_id;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public Double getSalary() {
		return salary;
	}
	public void setSalary(Double salary) {
		this.salary = salary;
	}
	
	
}
