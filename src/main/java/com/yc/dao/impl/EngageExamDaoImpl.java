package com.yc.dao.impl;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.yc.bean.EngageExam;
import com.yc.dao.EngageExamDao;

@Repository(value="engageExamDaoImpl")
public class EngageExamDaoImpl implements EngageExamDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public EngageExam add(EngageExam engageExam) {
		this.sqlSession.insert("com.yc.dao.mapper.EngageExamDaoMapper.add", engageExam);
		return engageExam;
	}

	@Override
	public List<EngageExam> findAll(EngageExam engageExam) {
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageExamDaoMapper.findAll", engageExam);
	}

	@Override
	public List<EngageExam> findAll() {
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageExamDaoMapper.findAll");
	}
}
