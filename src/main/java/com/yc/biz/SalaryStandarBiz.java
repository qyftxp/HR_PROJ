package com.yc.biz;

import java.util.List;
import java.util.Map;

import com.yc.bean.SalaryStandard;

public interface SalaryStandarBiz {
	
	public List<SalaryStandard> find(Map<String,String> map);
	
	public void addSalaryStandard(SalaryStandard ss);

	public void updateSalaryStandard(SalaryStandard ss);
}
