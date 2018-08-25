package com.yc.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yc.bean.EngageMajorRelease;
import com.yc.dao.EngageMajorReleaseDao;

@Repository(value="engageMajorReleaseDaoImpl")
public class EngageMajorReleaseDaoImpl implements EngageMajorReleaseDao {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public EngageMajorRelease add(EngageMajorRelease engageMajorRelease) {
		this.sqlSession.insert("com.yc.dao.mapper.EngageMajorReleaseDaoMapper.add", engageMajorRelease);
		return engageMajorRelease;
	}

	@Override
	public EngageMajorRelease update(EngageMajorRelease engageMajorRelease) {
		this.sqlSession.update("com.yc.dao.mapper.EngageMajorReleaseDaoMapper.update", engageMajorRelease);
		return engageMajorRelease;
	}

	@Override
	public List<EngageMajorRelease> findAll() {
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageMajorReleaseDaoMapper.findAll");
	}

	@Override
	public List<EngageMajorRelease> findAll(EngageMajorRelease engageMajorRelease) {
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageMajorReleaseDaoMapper.findAll", engageMajorRelease);
	}

	@Override
	public int delete(int mre_id) {
		this.sqlSession.delete("com.yc.dao.mapper.EngageMajorReleaseDaoMapper.delete", mre_id);
		return 1;
	}

	@Override
	public List<EngageMajorRelease> findList(Map<String, Object> map) {
		return this.sqlSession.selectList("com.yc.dao.mapper.EngageMajorReleaseDaoMapper.findList", map);
	}

	@Override
	public int getCount() {
		this.sqlSession.selectList("com.yc.dao.mapper.EngageMajorReleaseDaoMapper.getCount");
		return 1;
	}
}
