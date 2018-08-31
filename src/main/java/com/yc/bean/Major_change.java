package com.yc.bean;

import java.io.Serializable;

public class Major_change implements Serializable{
	
	private static final long serialVersionUID = 5272364375408022669L;
	
	private Integer mch_id ;  //  -- mch_id" : 主键，自动增长列  
	private String department_name;  //   -- 部门名称
	private String major_kind_id ;  //  -- major_kind_id" : 职位分类编号
	private String major_kind_name ;  //,-- major_kind_name" : 职位分类名称
	private String major_id ;  //-- major_id" : 职位编号
	private String major_name  ;  //-- major_name" : 职位名称 
	private String new_department_name ;  // -- 新部门名称
	private String new_major_kind_id ;  //  -- new_major_kind_id" : 新职位分类编号
	private String new_major_kind_name ;  //-- new_major_kind_name" : 新职位分类名称
	private String new_major_id ;  //  -- new_major_id" : 新职位编号
	private String new_major_name ;  //-- new_major_name" : 新职位名称
	private String human_id ;  //  -- human_id" : 人力资源档案编号
	private String human_name ;  //-- human_name" : 姓名 
	private String salary_standard_id ;  //-- salary_standard_id" : 薪酬标准编号
	private String salary_standard_name ;  //,-- salary_standard_name" : 薪酬标准名称
	private Double salary_sum ;  //-- salary_sum" : 薪酬总额 
	private String new_salary_standard_id ;  //-- new_salary_standard_id" : 新薪酬标准编号
	private String new_salary_standard_name ;  //-- new_salary_standard_name" : 新薪酬标准名称
	private Double new_salary_sum ;  //-- new_salary_sum" : 新薪酬总额 
	private String change_reason ;  //-- change_reason" : 调动原因
	private String check_reason ;  //-- check_reason" : 审核通过意见 
	private String check_status ;  //-- check_status" : 复核通过状态
	private String register ;  //-- register" : 登记人
	private String checker ;  //-- checker" : 复核人
	private String regist_time ;  //-- regist_time" : 登记时间   
	private String check_time ;  //  -- check_time" : 复核时间 
	
	
	public Integer getMch_id() {
		return mch_id;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public String getMajor_kind_id() {
		return major_kind_id;
	}
	public String getMajor_kind_name() {
		return major_kind_name;
	}
	public String getMajor_id() {
		return major_id;
	}
	public String getMajor_name() {
		return major_name;
	}
	public String getNew_department_name() {
		return new_department_name;
	}
	public String getNew_major_kind_id() {
		return new_major_kind_id;
	}
	public String getNew_major_kind_name() {
		return new_major_kind_name;
	}
	public String getNew_major_id() {
		return new_major_id;
	}
	public String getNew_major_name() {
		return new_major_name;
	}
	
	public String getHuman_name() {
		return human_name;
	}
	public String getSalary_standard_id() {
		return salary_standard_id;
	}
	public String getSalary_standard_name() {
		return salary_standard_name;
	}
	public Double getSalary_sum() {
		return salary_sum;
	}
	public String getNew_salary_standard_id() {
		return new_salary_standard_id;
	}
	public String getNew_salary_standard_name() {
		return new_salary_standard_name;
	}
	public Double getNew_salary_sum() {
		return new_salary_sum;
	}
	public String getChange_reason() {
		return change_reason;
	}
	public String getCheck_reason() {
		return check_reason;
	}
	public String getCheck_status() {
		return check_status;
	}
	public String getRegister() {
		return register;
	}
	public String getChecker() {
		return checker;
	}
	public String getRegist_time() {
		return regist_time;
	}
	public String getCheck_time() {
		return check_time;
	}
	public void setMch_id(Integer mch_id) {
		this.mch_id = mch_id;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	public void setMajor_kind_id(String major_kind_id) {
		this.major_kind_id = major_kind_id;
	}
	public void setMajor_kind_name(String major_kind_name) {
		this.major_kind_name = major_kind_name;
	}
	public void setMajor_id(String major_id) {
		this.major_id = major_id;
	}
	public void setMajor_name(String major_name) {
		this.major_name = major_name;
	}
	public void setNew_department_name(String new_department_name) {
		this.new_department_name = new_department_name;
	}
	public void setNew_major_kind_id(String new_major_kind_id) {
		this.new_major_kind_id = new_major_kind_id;
	}
	public void setNew_major_kind_name(String new_major_kind_name) {
		this.new_major_kind_name = new_major_kind_name;
	}
	public void setNew_major_id(String new_major_id) {
		this.new_major_id = new_major_id;
	}
	public void setNew_major_name(String new_major_name) {
		this.new_major_name = new_major_name;
	}
	
	
	public String getHuman_id() {
		return human_id;
	}
	public void setHuman_id(String human_id) {
		this.human_id = human_id;
	}
	public void setHuman_name(String human_name) {
		this.human_name = human_name;
	}
	public void setSalary_standard_id(String salary_standard_id) {
		this.salary_standard_id = salary_standard_id;
	}
	public void setSalary_standard_name(String salary_standard_name) {
		this.salary_standard_name = salary_standard_name;
	}
	public void setSalary_sum(Double salary_sum) {
		this.salary_sum = salary_sum;
	}
	public void setNew_salary_standard_id(String new_salary_standard_id) {
		this.new_salary_standard_id = new_salary_standard_id;
	}
	public void setNew_salary_standard_name(String new_salary_standard_name) {
		this.new_salary_standard_name = new_salary_standard_name;
	}
	public void setNew_salary_sum(Double new_salary_sum) {
		this.new_salary_sum = new_salary_sum;
	}
	public void setChange_reason(String change_reason) {
		this.change_reason = change_reason;
	}
	public void setCheck_reason(String check_reason) {
		this.check_reason = check_reason;
	}
	public void setCheck_status(String check_status) {
		this.check_status = check_status;
	}
	public void setRegister(String register) {
		this.register = register;
	}
	public void setChecker(String checker) {
		this.checker = checker;
	}
	public void setRegist_time(String regist_time) {
		this.regist_time = regist_time;
	}
	public void setCheck_time(String check_time) {
		this.check_time = check_time;
	}
	@Override
	public String toString() {
		return "Major_change [mch_id=" + mch_id + ", department_name=" + department_name + ", major_kind_id="
				+ major_kind_id + ", major_kind_name=" + major_kind_name + ", major_id=" + major_id + ", major_name="
				+ major_name + ", new_department_name=" + new_department_name + ", new_major_kind_id="
				+ new_major_kind_id + ", new_major_kind_name=" + new_major_kind_name + ", new_major_id=" + new_major_id
				+ ", new_major_name=" + new_major_name + ", human_id=" + human_id + ", human_name=" + human_name
				+ ", salary_standard_id=" + salary_standard_id + ", salary_standard_name=" + salary_standard_name
				+ ", salary_sum=" + salary_sum + ", new_salary_standard_id=" + new_salary_standard_id
				+ ", new_salary_standard_name=" + new_salary_standard_name + ", new_salary_sum=" + new_salary_sum
				+ ", change_reason=" + change_reason + ", check_reason=" + check_reason + ", check_status="
				+ check_status + ", register=" + register + ", checker=" + checker + ", regist_time=" + regist_time
				+ ", check_time=" + check_time + "]";
	}
	
	
	
	
}
