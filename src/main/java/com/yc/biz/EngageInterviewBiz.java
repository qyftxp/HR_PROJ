package com.yc.biz;

import java.util.List;

import com.yc.bean.EngageInterview;

public interface EngageInterviewBiz {
	//面试结果登记
	public boolean addEngageInterview(EngageInterview engageInterview);
	
	//面试结果查询(条件查询)
	public List<EngageInterview> findAll(EngageInterview engageInterview);
}
