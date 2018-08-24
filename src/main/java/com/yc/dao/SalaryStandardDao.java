package com.yc.dao;

import java.util.List;
import java.util.Map;

import com.yc.bean.SalaryStandard;

public interface SalaryStandardDao {
	/**根据薪酬标准ID查询薪酬标准基本信息
	 * @param id  薪酬标准ID
	 * @return 薪酬标准基本信息Bean
	 */
	public SalaryStandard findByStandard_id(String id);
	
	
	
	public void addSalaryStandard(SalaryStandard ss);

	public List<SalaryStandard> find(Map<String, String> map);
	
	public void updateSalaryStandard(SalaryStandard ss);
	
}
