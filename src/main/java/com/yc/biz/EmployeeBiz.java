package com.yc.biz;

import java.util.List;
import java.util.Map;

import com.yc.bean.Employee;
import com.yc.bean.ModifyEmployee;

public interface EmployeeBiz {

	public List<Employee> findAllBysql(Map map);
	
	public boolean addEmployee(Employee employee);
	
	public boolean delEmployee(int id);
	
	public boolean updateEmployee(Employee employee,ModifyEmployee memployee);
	
}
