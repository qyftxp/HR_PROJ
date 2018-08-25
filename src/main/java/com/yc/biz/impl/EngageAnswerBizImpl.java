package com.yc.biz.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.EngageAnswer;
import com.yc.biz.EngageAnswerBiz;
import com.yc.dao.EngageAnswerDao;

@Service
public class EngageAnswerBizImpl implements EngageAnswerBiz {
	@Resource(name="engageAnswerDaoImpl")
	private EngageAnswerDao engageAnswerDao;

	@Override
	public boolean addEngageAnswer(EngageAnswer engageAnswer) {
		EngageAnswer r = engageAnswerDao.add(engageAnswer);
		if(r != null){
			return true;
		}else{
			return false;
		}
	}
}
