package com.yc.dao;

import java.util.List;

import com.yc.bean.EngageInterview;

public interface EngageInterviewDao {
	//面试结果登记
	public EngageInterview add(EngageInterview engageInterview);
	
	//面试结果查询(查询全部)
	public List<EngageInterview> findAll();
	
	//面试结果查询(条件查询)
	public List<EngageInterview> findAll(EngageInterview engageInterview);
}
