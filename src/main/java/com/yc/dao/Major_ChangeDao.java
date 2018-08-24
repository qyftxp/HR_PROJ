package com.yc.dao;

import java.util.List;
import java.util.Map;

import com.yc.bean.Employee;
import com.yc.bean.Major_change;

public interface Major_ChangeDao {
	
	public int addMajor_change(Major_change major_change);
	
	public List<Major_change> findAllBysql(Map map);
	
	public int updateMajor_change(Major_change major_change);
	
	public int updateEmployee(Employee employee);
	
}
