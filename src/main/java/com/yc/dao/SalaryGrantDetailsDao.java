package com.yc.dao;

import java.util.List;

import com.yc.bean.SalaryGrantDetails;

public interface SalaryGrantDetailsDao {

	public List<SalaryGrantDetails> findByid(String id);
	
	public void addSalaryStandardDetailsList(List<SalaryGrantDetails> list);
}
