package com.yc.biz;

import java.util.List;
import java.util.Map;

import com.yc.bean.SalaryStandard;
import com.yc.bean.SalaryStandardDetails;

public interface SalaryStandardBiz {
	
	public List<SalaryStandard> find(Map<String,String> map);
	
	public void addSalaryStandard(SalaryStandard ss);

	public void updateSalaryStandard(SalaryStandard ss);

	public List<SalaryStandardDetails> findDetailsById(String id);

	public void checkSalaryStandard(SalaryStandard ss);

	public void updateSalaryStandardOnlyOne(SalaryStandard ss);
	
}
