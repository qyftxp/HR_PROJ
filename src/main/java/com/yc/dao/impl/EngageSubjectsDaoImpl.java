package com.yc.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yc.bean.EngageSubjects;
import com.yc.dao.EngageSubjectsDao;

@Repository(value="engageSubjectsDaoImpl")
public class EngageSubjectsDaoImpl implements EngageSubjectsDao {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public EngageSubjects add(EngageSubjects engageSubjects) {
		this.sqlSession.insert("com.yc.dao.mapper.EngageSubjectsDaoMapper.add", engageSubjects);
		return engageSubjects;
	}

	@Override
	public EngageSubjects update(EngageSubjects engageSubjects) {
		this.sqlSession.update("com.yc.dao.mapper.EngageSubjectsDaoMapper.update", engageSubjects);
		return engageSubjects;
	}

	@Override
	public List<EngageSubjects> findAll(EngageSubjects engageSubjects) {
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageSubjectsDaoMapper.findAll", engageSubjects);
	}

	@Override
	public List<EngageSubjects> findAll() {
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageSubjectsDaoMapper.findAll");
	}

	@Override
	public List<EngageSubjects> findList(Map<String, Object> map) {
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageSubjectsDaoMapper.findList", map);
	}

	@Override
	public int getCount() {
		this.sqlSession.selectList("com.yc.dao.mapper.EngageSubjectsDaoMapper.getCount");
		return 1;
	}
}
