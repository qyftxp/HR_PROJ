package com.yc.biz;

import java.util.List;

import com.yc.bean.EngageResume;

public interface EngageResumeBiz {
	//简历登记
	public boolean addEngageResume(EngageResume engageResume);
	
	//修改简历
	public boolean updateEngageResume(EngageResume engageResume);
	
	//简历筛选(条件查询)
	public List<EngageResume> findAll(EngageResume engageResume);
	
	//删除简历
	public boolean deleteEngageResume(int res_id);
}
