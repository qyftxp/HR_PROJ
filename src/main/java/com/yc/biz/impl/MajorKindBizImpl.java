package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.Major;
import com.yc.bean.MajorKind;
import com.yc.biz.MajorKindBiz;
import com.yc.dao.MajorKindDao;

@Service
public class MajorKindBizImpl implements MajorKindBiz {
	
	@Resource(name="majorKindDaoImpl")
	private MajorKindDao majorKindDaoImpl;

	@Override
	public List<MajorKind> findMajorKind() {
		List<MajorKind> list = majorKindDaoImpl.findMajorKind();
		return list;
	}

	@Override
	public List<Major> findMajor(String kind_id) {
		
		List<Major> list = majorKindDaoImpl.findMajor(kind_id);
		return list;
	}

}
