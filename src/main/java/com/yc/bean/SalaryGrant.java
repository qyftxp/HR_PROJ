package com.yc.bean;

import java.io.Serializable;
import java.util.List;

public class SalaryGrant implements Serializable{
	private static final long serialVersionUID = 1L;
	private Integer sgr_id ;//sgr_id  : 主键，自动增长列  
	private String salary_grant_id ;//alary_grant_id" : 薪酬发放编号 
	private String department_name ;//部门名称
	private Integer human_amount;//human_amount" : 总人数 
	private Double salary_sum ;// salary_sum" : 薪酬总额 
	private Double salary_paid_sum ;//salary_paid_sum" : 实发总金额
	private String register ;//register" : 登记人 
	private String regist_time; //regist_time" : 登记时间
	private String checker ;//checker" : 复核人 
	private String check_time ;//check_time" : 复核时间 
	private String check_status ;// check_status" : 复核状态
	
	private List<SalaryGrantDetails> list; //
	
	
	
	public List<SalaryGrantDetails> getList() {
		return list;
	}
	public void setList(List<SalaryGrantDetails> list) {
		this.list = list;
	}
	public Integer getSgr_id() {
		return sgr_id;
	}
	public void setSgr_id(Integer sgr_id) {
		this.sgr_id = sgr_id;
	}
	public String getSalary_grant_id() {
		return salary_grant_id;
	}
	public void setSalary_grant_id(String salary_grant_id) {
		this.salary_grant_id = salary_grant_id;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	public Integer getHuman_amount() {
		return human_amount;
	}
	public void setHuman_amount(Integer human_amount) {
		this.human_amount = human_amount;
	}
	public Double getSalary_sum() {
		return salary_sum;
	}
	public void setSalary_sum(Double salary_sum) {
		this.salary_sum = salary_sum;
	}
	public Double getSalary_paid_sum() {
		return salary_paid_sum;
	}
	public void setSalary_paid_sum(Double salary_paid_sum) {
		this.salary_paid_sum = salary_paid_sum;
	}
	public String getRegister() {
		return register;
	}
	public void setRegister(String register) {
		this.register = register;
	}
	public String getRegist_time() {
		return regist_time;
	}
	public void setRegist_time(String regist_time) {
		this.regist_time = regist_time;
	}
	public String getChecker() {
		return checker;
	}
	public void setChecker(String checker) {
		this.checker = checker;
	}
	public String getCheck_time() {
		return check_time;
	}
	public void setCheck_time(String check_time) {
		this.check_time = check_time;
	}
	public String getCheck_status() {
		return check_status;
	}
	public void setCheck_status(String check_status) {
		this.check_status = check_status;
	}
	@Override
	public String toString() {
		return "SalaryGrant [sgr_id=" + sgr_id + ", salary_grant_id=" + salary_grant_id + ", department_name="
				+ department_name + ", human_amount=" + human_amount + ", salary_sum=" + salary_sum
				+ ", salary_paid_sum=" + salary_paid_sum + ", register=" + register + ", regist_time=" + regist_time
				+ ", checker=" + checker + ", check_time=" + check_time + ", check_status=" + check_status + ", list="
				+ list + "]";
	}
	
}
