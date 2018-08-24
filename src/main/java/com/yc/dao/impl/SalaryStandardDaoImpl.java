package com.yc.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yc.bean.SalaryStandard;
import com.yc.dao.SalaryStandardDao;

@Repository(value="salaryStandardDaoImpl")
public class SalaryStandardDaoImpl implements SalaryStandardDao {
	@Autowired
	private SqlSession sqlSession;
	
	/**根据薪酬标准ID查询薪酬标准基本信息
	 * @param id  薪酬标准ID
	 * @return 薪酬标准基本信息Bean
	 */
	@Override
	public SalaryStandard findByStandard_id(String id) {
		return this.sqlSession.selectOne("com.yc.dao.SalaryStandardDaoMapper.getSalaryStandardById", id);
	}
	/**
	 * 添加一条
	 */
	@Override
	public void addSalaryStandard(SalaryStandard ss) {
		this.sqlSession.insert("com.yc.dao.SalaryStandardDaoMapper.addSalaryStandard", ss);
	}
	/**
	 * 多条件查询
	 */
	@Override
	public List<SalaryStandard> find(Map<String,String> map){
		return this.sqlSession.selectOne("com.yc.dao.SalaryStandardDaoMapper.getSalaryStandardByMap", map);
	}
	/**
	 * 根据传入对象修改
	 */
	@Override
	public void updateSalaryStandard(SalaryStandard ss) {
		this.sqlSession.selectOne("com.yc.dao.SalaryStandardDaoMapper.updateSalaryStandard", ss);
	}
	
	

}
