package com.yc.dao.impl;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.yc.bean.EngageAnswerDetails;
import com.yc.dao.EngageAnswerDetailsDao;

@Repository(value="engageAnswerDetailsDaoImpl")
public class EngageAnswerDetailsDaoImpl implements EngageAnswerDetailsDao {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public EngageAnswerDetails add(EngageAnswerDetails engageAnswerDetails) {
		this.sqlSession.insert("com.yc.dao.mapper.EngageAnswerDetailsDaoMapper.add", engageAnswerDetails);
		return engageAnswerDetails;
	}

	@Override
	public List<EngageAnswerDetails> findAll(EngageAnswerDetails engageAnswerDetails) {
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageAnswerDetailsDaoMapper.findAll", engageAnswerDetails);
	}

	@Override
	public List<EngageAnswerDetails> findAll() {
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageAnswerDetailsDaoMapper.findAll");
	}
}
