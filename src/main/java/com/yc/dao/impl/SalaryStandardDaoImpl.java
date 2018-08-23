package com.yc.dao.impl;

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

}
