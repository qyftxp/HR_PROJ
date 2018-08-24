package com.yc.dao;

import java.util.List;

import com.yc.bean.SalaryGrant;

public interface SalaryGrantDao {
	
	
	public List<SalaryGrant> findAll();
	
	public void addSalaryGrant(SalaryGrant sg);
}
