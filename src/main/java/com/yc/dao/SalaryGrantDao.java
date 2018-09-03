package com.yc.dao;

import java.util.List;
import java.util.Map;

import com.yc.bean.SalaryGrant;

public interface SalaryGrantDao {
	
	

public List<SalaryGrant> findAll();
	
	public void addSalaryGrant(SalaryGrant sg);

	public void addSalaryGrant(List<SalaryGrant> sg);
	
	public void updateSalaryGrant(SalaryGrant sg);

	public List<SalaryGrant> findByMap(Map<String, String> map);
}
