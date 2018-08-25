package com.yc.dao;

import java.util.List;

import com.yc.bean.EngageResume;

public interface EngageResumeDao {
	//简历登记
	public EngageResume add(EngageResume engageResume);
	
	//修改简历
	public EngageResume update(EngageResume engageResume);
	
	//简历筛选(查询全部)
	public List<EngageResume> findAll();
	
	//简历筛选(条件查询)
	public List<EngageResume> findAll(EngageResume engageResume);
	
	//删除简历
	public int delete(int res_id);
}
