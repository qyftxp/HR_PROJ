package com.yc.dao.impl;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.yc.bean.EngageResume;
import com.yc.dao.EngageResumeDao;

@Repository(value="engageResumeDaoImpl")
public class EngageResumeDaoImpl implements EngageResumeDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public EngageResume add(EngageResume engageResume) {
		this.sqlSession.insert("com.yc.dao.mapper.EngageResumeDaoMapper.add", engageResume);
		return engageResume;
	}

	@Override
	public List<EngageResume> findAll(EngageResume engageResume) {
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageResumeDaoMapper.findAll", engageResume);
	}

	@Override
	public EngageResume update(EngageResume engageResume) {
		this.sqlSession.update("com.yc.dao.mapper.EngageResumeDaoMapper.update", engageResume);
		return engageResume;
	}

	@Override
	public List<EngageResume> findAll() {
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageResumeDaoMapper.findAll");
	}

	@Override
	public int delete(int res_id) {
		this.sqlSession.delete("com.yc.dao.mapper.EngageResumeDaoMapper.delete", res_id);
		return 1;
	}
}
