package com.yc.dao;

import java.util.List;
import com.yc.bean.EngageExam;

public interface EngageExamDao {
	//试卷登记
	public EngageExam add(EngageExam engageExam);
	
	//试卷查询（查询全部）
	public List<EngageExam> findAll();
	
	//试卷查询（条件查询）
	public List<EngageExam> findAll(EngageExam engageExam);
}
