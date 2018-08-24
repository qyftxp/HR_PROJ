package com.yc.biz.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.bean.SalaryStandard;
import com.yc.bean.SalaryStandardDetails;
import com.yc.biz.SalaryStandarBiz;
import com.yc.dao.EmployeeDao;
import com.yc.dao.SalaryStandardDao;
import com.yc.dao.SalaryStandardDetailsDao;
@Service
public class SalaryStandarBizImpl implements SalaryStandarBiz {
	@Resource(name="salaryStandardDaoImpl")
	private SalaryStandardDao salaryStandardDao;
	
	@Resource(name="salaryStandardDetailsDaoImpl")
	private SalaryStandardDetailsDao salaryStandardDetailsDao;
	
	
	@Override
	public List<SalaryStandard> find(Map<String, String> map) {
		return salaryStandardDao.find(map);
	}

	/**
	 * 使用事务添加一条薪酬标准信息表数据+添加多条薪酬详细项目表数据
	 */
	@Transactional
	@Override
	public void addSalaryStandard(SalaryStandard ss) {
		salaryStandardDao.addSalaryStandard(ss);
		List<SalaryStandardDetails> list=ss.getList();
		salaryStandardDetailsDao.addSalaryStandardDetailsList(list);
	}
	/**
	 * 使用事务修改一条薪酬标准信息表数据+修改多条薪酬详细项目表数据
	 */
	@Transactional
	@Override
	public void updateSalaryStandard(SalaryStandard ss) {
		salaryStandardDao.updateSalaryStandard(ss);
		List<SalaryStandardDetails> list=ss.getList();
		salaryStandardDetailsDao.updateSalaryStandardDetailsList(list);
	}
	

}
