package com.yc.biz;

import java.util.List;
import java.util.Map;

import com.yc.bean.EngageMajorRelease;
import com.yc.web.model.JsonModel;

public interface EngageMajorReleaseBiz {
	//职位发布登记
	public boolean addEngageMajorRelease(EngageMajorRelease engageMajorRelease);
	
	//职位发布变更
	public boolean updateEngageMajorRelease(EngageMajorRelease engageMajorRelease);
	
	//职位发布查询（查询全部）
	public List<EngageMajorRelease> findAll();
	
	//分页查询
	public JsonModel<EngageMajorRelease> findList(Map<String,Object> map);
	
	//删除职位发布
	public boolean deleteEngageMajorRelease(int mre_id);
}
