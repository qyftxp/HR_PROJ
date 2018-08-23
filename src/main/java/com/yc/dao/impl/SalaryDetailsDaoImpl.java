package com.yc.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yc.bean.SalaryDetails;
import com.yc.dao.SalaryDetailsDao;

@Repository(value="salaryDetailsDaoImpl")
public class SalaryDetailsDaoImpl implements SalaryDetailsDao {
	@Autowired
	private SqlSession sqlSession;
	/**根据薪酬标准ID查询薪酬标准项目信息
	 * @param id  薪酬标准ID
	 * @return 薪酬标准项目信息Bean
	 */
	@Override
	public List<SalaryDetails> findByStandard_id(String id) {
		return this.sqlSession.selectList("com.yc.dao.SalaryDetailsDaoMapper.getSalaryDetailsById", id);
	}

}
