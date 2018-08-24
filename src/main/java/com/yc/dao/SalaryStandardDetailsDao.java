package com.yc.dao;

import java.util.List;

import com.yc.bean.SalaryStandardDetails;

public interface SalaryStandardDetailsDao {
	/**根据薪酬标准ID查询薪酬标准项目信息
	 * @param id  薪酬标准ID
	 * @return 薪酬标准项目信息Bean
	 */
	public List<SalaryStandardDetails> findByStandard_id(String id);
	
	public void addSalaryStandardDetailsList(List<SalaryStandardDetails> list);

	public void updateSalaryStandardDetailsList(List<SalaryStandardDetails> list);
}
