package com.yc.bean;

import java.io.Serializable;

public class Department implements Serializable{
	private static final long serialVersionUID = -4385352517951788595L;

	private Integer dept_id;    //-- 主键
	private Integer department_id ;  // -- 部门编号
	private String department_name;   //-- 部门名称
	
	public Integer getDept_id() {
		return dept_id;
	}
	
	public void setDept_id(Integer dept_id) {
		this.dept_id = dept_id;
	}
	
	public Integer getDepartment_id() {
		return department_id;
	}
	
	public void setDepartment_id(Integer department_id) {
		this.department_id = department_id;
	}
	
	public String getDepartment_name() {
		return department_name;
	}
	
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	
	public Department(Integer department_id, String department_name) {
		super();
		this.department_id = department_id;
		this.department_name = department_name;
	}
	
	public Department() {
		super();
	}
	
	@Override
	public String toString() {
		return "Department [dept_id=" + dept_id + ", department_id=" + department_id + ", department_name="
				+ department_name + "]";
	}
	
	
}
