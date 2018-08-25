package com.yc.dao;

import java.util.List;
import java.util.Map;
import com.yc.bean.EngageExamDetails;

public interface EngageExamDetailsDao {
	//添加试卷详细信息
	public EngageExamDetails add(EngageExamDetails engageExamDetails);
	
	//查询试卷详细信息（查询全部）
	public List<EngageExamDetails> findAll();
	
	//查询试卷详细信息（条件查询）
	public List<EngageExamDetails> findAll(EngageExamDetails engageExamDetails);
	
	//统计查询
	public int getCount();
	
	//分页查询
	public List<EngageExamDetails> findList(Map<String,Object> map);
}
