package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.EngageResume;
import com.yc.biz.EngageResumeBiz;
import com.yc.dao.EngageResumeDao;

@Service
public class EngageResumeBizImpl implements EngageResumeBiz {
	@Resource(name="engageResumeDaoImpl")
	private EngageResumeDao engageResumeDao;

	@Override
	public boolean addEngageResume(EngageResume engageResume) {
		EngageResume r = engageResumeDao.add(engageResume);
		if(r != null){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public boolean updateEngageResume(EngageResume engageResume) {
		EngageResume r = engageResumeDao.update(engageResume);
		if(r != null){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public List<EngageResume> findAll(EngageResume engageResume) {
		List<EngageResume> list = engageResumeDao.findAll(engageResume);
		return list;
	}

	@Override
	public boolean deleteEngageResume(int res_id) {
		int r = engageResumeDao.delete(res_id);
		if(r != 0){
			return true;
		}else{
			return false;
		}
	}
}
