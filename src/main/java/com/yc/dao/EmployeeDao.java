package com.yc.dao;

import java.util.List;
import java.util.Map;

import com.yc.bean.Employee;
import com.yc.bean.ModifyEmployee;

public interface EmployeeDao {
	
	public List<Employee> findAllBysql(Map map);
	
	public List<Employee> findAllByStatus(Map map);
	
	public int addEmployee(Employee employee);
	
	public int delEmployee(int id);
	
	public int updateEmployee(Employee employee);
	
	public int addModifyEmployee(ModifyEmployee memployee);
	
<<<<<<< HEAD
	
=======
>>>>>>> branch 'master' of https://github.com/qyftxp/HR_PROJ.git
}
