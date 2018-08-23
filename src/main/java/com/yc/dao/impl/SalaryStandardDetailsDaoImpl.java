package com.yc.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yc.bean.SalaryStandardDetails;
import com.yc.dao.SalaryStandardDetailsDao;

@Repository(value="salaryStandardDetailsDaoImpl")
public class SalaryStandardDetailsDaoImpl implements SalaryStandardDetailsDao {
	@Autowired
	private SqlSession sqlSession;
	/**根据薪酬标准ID查询薪酬标准项目信息
	 * @param id  薪酬标准ID
	 * @return 薪酬标准项目信息Bean
	 */
	@Override
	public List<SalaryStandardDetails> findByStandard_id(String id) {
		return this.sqlSession.selectList("com.yc.dao.SalaryStandardDetailsDaoMapper.getSalaryDetailsById", id);
	}
	@Override
	public void addSalaryStandardDetailsList(List<SalaryStandardDetails> list) {
		this.sqlSession.insert("com.yc.dao.SalaryStandardDetailsDaoMapper.addSalaryStandardDetailsList", list);
	}

}
