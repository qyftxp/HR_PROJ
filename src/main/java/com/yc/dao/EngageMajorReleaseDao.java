package com.yc.dao;

import java.util.List;
import java.util.Map;

import com.yc.bean.EngageMajorRelease;

public interface EngageMajorReleaseDao {
	//职位发布登记
	public EngageMajorRelease add(EngageMajorRelease engageMajorRelease);
	
	//职位发布变更
	public EngageMajorRelease update(EngageMajorRelease engageMajorRelease);
	
	//职位发布查询（查询全部）
	public List<EngageMajorRelease> findAll();
	
	//职位发布查询（条件查询）
	public List<EngageMajorRelease> findAll(EngageMajorRelease engageMajorRelease);
	
	//统计查询
	public int getCount();
	
	//分页查询
	public List<EngageMajorRelease> findList(Map<String,Object> map);
	
	//删除职位发布
	public int delete(int mre_id);
}
