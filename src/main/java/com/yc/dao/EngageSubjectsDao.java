package com.yc.dao;

import java.util.List;
import java.util.Map;

import com.yc.bean.EngageSubjects;

public interface EngageSubjectsDao {
	//试题登记
	public EngageSubjects add(EngageSubjects engageSubjects);
	
	//试题修改
	public EngageSubjects update(EngageSubjects engageSubjects);
	
	//试题查询（查询全部）
	public List<EngageSubjects> findAll();
	
	//试题查询（条件查询）
	public List<EngageSubjects> findAll(EngageSubjects engageSubjects);
	
	//统计查询
	public int getCount();
	
	//分页查询
	public List<EngageSubjects> findList(Map<String,Object> map);
}
