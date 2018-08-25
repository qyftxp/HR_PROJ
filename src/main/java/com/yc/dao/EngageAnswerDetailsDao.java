package com.yc.dao;

import java.util.List;
import com.yc.bean.EngageAnswerDetails;

public interface EngageAnswerDetailsDao {
	//添加试卷详细信息
	public EngageAnswerDetails add(EngageAnswerDetails engageAnswerDetails);
	
	//查询试卷详细信息（查询全部）
	public List<EngageAnswerDetails> findAll();

	//查询试卷详细信息（条件查询）
	public List<EngageAnswerDetails> findAll(EngageAnswerDetails engageAnswerDetails);
}
