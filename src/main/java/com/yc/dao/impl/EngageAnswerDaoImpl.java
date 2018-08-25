package com.yc.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yc.bean.EngageAnswer;
import com.yc.dao.EngageAnswerDao;

@Repository(value="engageAnswerDaoImpl")
public class EngageAnswerDaoImpl implements EngageAnswerDao {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public EngageAnswer add(EngageAnswer engageAnswer) {
		this.sqlSession.insert("com.yc.dao.mapper.EngageAnswerDaoMapper.add", engageAnswer);
		return engageAnswer;
	}
}
