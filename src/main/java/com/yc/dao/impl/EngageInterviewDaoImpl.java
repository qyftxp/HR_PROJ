package com.yc.dao.impl;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.yc.bean.EngageInterview;
import com.yc.dao.EngageInterviewDao;

@Repository(value="engageInterviewDaoImpl")
public class EngageInterviewDaoImpl implements EngageInterviewDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public EngageInterview add(EngageInterview engageInterview) {
		this.sqlSession.insert("com.yc.dao.mapper.EngageInterviewDaoMapper.add", engageInterview);
		return engageInterview;
	}

	@Override
	public List<EngageInterview> findAll(EngageInterview engageInterview) {		
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageInterviewDaoMapper.findAll", engageInterview);
	}

	@Override
	public List<EngageInterview> findAll() {
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageInterviewDaoMapper.findAll");
	}
}
