package com.yc.biz;

import java.util.List;
import java.util.Map;

import com.yc.bean.EngageSubjects;
import com.yc.web.model.JsonModel;

public interface EngageSubjectsBiz {
	//试题登记
	public boolean addEngageSubjects(EngageSubjects engageSubjects);
	
	//试题修改
	public boolean updateEngageSubjects(EngageSubjects engageSubjects);
	
	//试题查询（条件查询）
	public List<EngageSubjects> findAll(EngageSubjects engageSubjects);
	
	//分页查询
	public JsonModel<EngageSubjects> findList(Map<String,Object> map);
}
