package com.yc.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yc.bean.SalaryGrant;
import com.yc.dao.SalaryGrantDao;
@Repository(value="salaryGrantDaoImpl")
public class SalaryGrantDaoImpl implements SalaryGrantDao {
	@Autowired
	private SqlSession sqlSession;
	@Override
	public List<SalaryGrant> findAll() {
		return this.sqlSession.selectList("com.yc.dao.SalaryGrantDaoMapper.getAllSalaryGrant");
	}
	@Override
	public void addSalaryGrant(SalaryGrant sg) {
		this.sqlSession.insert("com.yc.dao.SalaryGrantDaoMapper.addSalaryGrant",sg);
	}

}
