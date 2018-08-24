package com.yc.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yc.bean.PublicChar;
import com.yc.dao.PublicCharDao;

@Repository
public class PublicCharDaoImpl implements PublicCharDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int addChar(PublicChar pchar) {
		return sqlSession.insert("com.yc.dao.PublicCharDaoMapper.addChar",pchar);
		
	}

	@Override
	public List<PublicChar> findChar(String attribute_kind) {
		
		List<PublicChar> list = sqlSession.selectList("com.yc.dao.PublicCharDaoMapper.findChar",attribute_kind);
		return list;
	}

}
