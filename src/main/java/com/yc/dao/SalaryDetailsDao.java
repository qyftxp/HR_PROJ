package com.yc.dao;

import java.util.List;

import com.yc.bean.SalaryDetails;
import com.yc.bean.SalaryStandard;

public interface SalaryDetailsDao {
	/**根据薪酬标准ID查询薪酬标准项目信息
	 * @param id  薪酬标准ID
	 * @return 薪酬标准项目信息Bean
	 */
	public List<SalaryDetails> findByStandard_id(String id);
}
