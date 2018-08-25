package com.yc.biz;

import java.util.List;
import com.yc.bean.EngageAnswerDetails;

public interface EngageAnswerDetailsBiz {
	//添加试卷详细信息
	public boolean addEngageAnswerDetails(EngageAnswerDetails engageAnswerDetails);
	
	//查询试卷详细信息（查询全部）
	public List<EngageAnswerDetails> findAll();
}
