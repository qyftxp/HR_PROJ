package com.yc.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yc.bean.Major;
import com.yc.bean.MajorKind;
import com.yc.dao.MajorKindDao;

@Repository
public class MajorKindDaoImpl implements MajorKindDao {	
		
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MajorKind> findMajorKind() {
		
		List<MajorKind> list = sqlSession.selectList("com.yc.dao.MajorKindDaoMapper.findMajorKind");
		return list;
	}
	
	/**
	 * 根据职位分类编号查询所有职位
	 * */
	@Override
	public List<Major> findMajor(String kind_id) {
		
		List<Major> list = sqlSession.selectList("com.yc.dao.MajorKindDaoMapper.findMajor",kind_id);
		return list;
	}


	@Override
	public List<Major> findNameMajor(String kind_name) {
		List<Major> list = sqlSession.selectList("com.yc.dao.MajorKindDaoMapper.findNameMajor",kind_name);
		return list;
	}

}
