package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.EngageExam;
import com.yc.biz.EngageExamBiz;
import com.yc.dao.EngageExamDao;

@Service
public class EngageExamBizImpl implements EngageExamBiz {
	@Resource(name="engageExamDaoImpl")
	private EngageExamDao engageExamDao;

	@Override
	public boolean addEngageExam(EngageExam engageExam) {
		EngageExam r = engageExamDao.add(engageExam);
		if(r != null){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public List<EngageExam> findAll() {
		List<EngageExam> list = engageExamDao.findAll();
		return list; 
	}
}
