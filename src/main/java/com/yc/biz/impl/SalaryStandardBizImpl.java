package com.yc.biz.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.bean.SalaryStandard;
import com.yc.bean.SalaryStandardDetails;
import com.yc.biz.SalaryStandardBiz;
import com.yc.dao.SalaryStandardDao;
import com.yc.dao.SalaryStandardDetailsDao;
@Service
public class SalaryStandardBizImpl implements SalaryStandardBiz {
	@Resource(name="salaryStandardDaoImpl")
	private SalaryStandardDao salaryStandardDao;
	
	@Resource(name="salaryStandardDetailsDaoImpl")
	private SalaryStandardDetailsDao salaryStandardDetailsDao;
	
	/**
	 * 根据ID查找薪酬详情
	 */
	@Override
	public List<SalaryStandardDetails> findDetailsById(String id) {
		return salaryStandardDetailsDao.findByStandard_id(id);
	}
	/**
	 * 多条件查询薪酬标准
	 */
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
	 * 使用事务修改一条薪酬标准信息表数据
	 */
	@Override
	public void updateSalaryStandardOnlyOne(SalaryStandard ss) {
		salaryStandardDao.updateSalaryStandard(ss);
	}
	/**
	 * 使用事务修改一条薪酬标准信息表数据+修改多条薪酬详细项目表数据
	 */
	@Transactional
	@Override
	public void updateSalaryStandard(SalaryStandard ss) {
		String s=ss.getStandard_id();
		salaryStandardDao.addSalaryStandard(ss);
		List<SalaryStandardDetails> list=ss.getList();
		for(SalaryStandardDetails ssd:list){
			ssd.setStandard_id(s);
		}
		salaryStandardDetailsDao.addSalaryStandardDetailsList(list);
	}
	/**
	 * 使用事务复核一条薪酬标准信息表数据+修改多条薪酬详细项目表数据
	 */
	@Override
	public void checkSalaryStandard(SalaryStandard ss) {
		//1.把原来的薪酬标准该为时间为ID的：把详情一起该
		Map<String,String> map=new HashMap<String,String>();
		map.put("standard_id", ss.getStandard_id());
		List<SalaryStandard> list=find(map);
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		list.get(0).setStandard_id(sdf.format(date));
		updateSalaryStandard(list.get(0));
		//2.把刚刚传进来的 去掉前面的改去掉：把详情一起该
		updateSalaryStandard(ss);
		//salaryStandardDetailsDao.findByStandard_id(ss);
	}
	

}
