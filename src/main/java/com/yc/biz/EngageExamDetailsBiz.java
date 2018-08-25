package com.yc.biz;

import java.util.List;
import java.util.Map;

import com.yc.bean.EngageExamDetails;
import com.yc.web.model.JsonModel;

public interface EngageExamDetailsBiz {
	//添加试卷详细信息
	public boolean addEngageExamDetails(EngageExamDetails engageExamDetails);
	
	//查询试卷详细信息（查询全部）
	public List<EngageExamDetails> findAll();
	
	//分页查询
	public JsonModel<EngageExamDetails> findList(Map<String,Object> map);
}
