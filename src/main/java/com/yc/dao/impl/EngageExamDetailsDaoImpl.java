package com.yc.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yc.bean.EngageExamDetails;
import com.yc.dao.EngageExamDetailsDao;

@Repository(value="engageExamDetailsDaoImpl")
public class EngageExamDetailsDaoImpl implements EngageExamDetailsDao {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public EngageExamDetails add(EngageExamDetails engageExamDetails) {
		this.sqlSession.insert("com.yc.dao.mapper.EngageExamDetailsDaoMapper.add", engageExamDetails);
		return engageExamDetails;
	}

	@Override
	public List<EngageExamDetails> findAll(EngageExamDetails engageExamDetails) {
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageExamDetailsDaoMapper.findAll", engageExamDetails);
	}

	@Override
	public List<EngageExamDetails> findAll() {
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageExamDetailsDaoMapper.findAll");
	}

	@Override
	public List<EngageExamDetails> findList(Map<String, Object> map) {
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageExamDetailsDaoMapper.findList", map);
	}

	@Override
	public int getCount() {
		this.sqlSession.selectList("com.yc.dao.mapper.EngageExamDetailsDaoMapper.getCount");
		return 1;
	}
}
