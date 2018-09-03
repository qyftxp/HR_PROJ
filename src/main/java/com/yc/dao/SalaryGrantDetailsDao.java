package com.yc.dao;

import java.util.List;

import com.yc.bean.SalaryGrantDetails;

public interface SalaryGrantDetailsDao {
	

public List<SalaryGrantDetails> findByid(String id);
	
	public SalaryGrantDetails findByname(String name);
	

	public void addSalaryGrantDetailsList(List<SalaryGrantDetails> list);
	
	public void updateSalaryGrantDetails(List<SalaryGrantDetails> list);
}
