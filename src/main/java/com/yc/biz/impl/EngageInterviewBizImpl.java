package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.EngageInterview;
import com.yc.biz.EngageInterviewBiz;
import com.yc.dao.EngageInterviewDao;

@Service
public class EngageInterviewBizImpl implements EngageInterviewBiz {
	@Resource(name="engageInterviewDaoImpl")
	private EngageInterviewDao engageInterviewDao;

	@Override
	public boolean addEngageInterview(EngageInterview engageInterview) {
		EngageInterview r = engageInterviewDao.add(engageInterview);
		if(r != null){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public List<EngageInterview> findAll(EngageInterview engageInterview) {
		List<EngageInterview> list = engageInterviewDao.findAll(engageInterview);
		return list;
	}
}
