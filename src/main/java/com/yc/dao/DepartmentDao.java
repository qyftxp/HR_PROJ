package com.yc.dao;

import java.util.List;

import com.yc.bean.Department;


public interface DepartmentDao {
	
	//查出所有的部门
	List<Department> findAll();
}
