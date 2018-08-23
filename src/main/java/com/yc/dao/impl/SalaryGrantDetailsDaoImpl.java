package com.yc.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yc.bean.SalaryGrantDetails;
import com.yc.dao.SalaryGrantDetailsDao;
@Repository(value="salaryGrantDetailsDaoImpl")
public class SalaryGrantDetailsDaoImpl implements SalaryGrantDetailsDao {
	@Autowired
	private SqlSession sqlSession;
	@Override
	public List<SalaryGrantDetails> findByid(String id) {
		return this.sqlSession.selectList("com.yc.dao.SalaryGrantDetailsDaoMapper.getSalaryGrantDetailsByid", id);
	}

}
