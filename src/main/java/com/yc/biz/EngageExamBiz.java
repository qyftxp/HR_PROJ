package com.yc.biz;

import java.util.List;
import com.yc.bean.EngageExam;

public interface EngageExamBiz {
	//试卷登记
	public boolean addEngageExam(EngageExam engageExam);
	
	//试卷查询（查询全部）
	public List<EngageExam> findAll();
}
