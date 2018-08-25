package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.EngageAnswerDetails;
import com.yc.biz.EngageAnswerDetailsBiz;
import com.yc.dao.EngageAnswerDetailsDao;

@Service
public class EngageAnswerDetailsBizImpl implements EngageAnswerDetailsBiz {
	@Resource(name="engageAnswerDetailsDaoImpl")
	private EngageAnswerDetailsDao engageAnswerDetailsDao;

	@Override
	public boolean addEngageAnswerDetails(EngageAnswerDetails engageAnswerDetails) {
		EngageAnswerDetails r = engageAnswerDetailsDao.add(engageAnswerDetails);
		if(r != null){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public List<EngageAnswerDetails> findAll() {
		List<EngageAnswerDetails> list = engageAnswerDetailsDao.findAll();
		return list;
	}
}
