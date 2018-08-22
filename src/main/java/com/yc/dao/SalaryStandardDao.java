package com.yc.dao;

import com.yc.bean.SalaryStandard;

public interface SalaryStandardDao {
	/**根据薪酬标准ID查询薪酬标准基本信息
	 * @param id  薪酬标准ID
	 * @return 薪酬标准基本信息Bean
	 */
	public SalaryStandard findByStandard_id(String id);
	
}