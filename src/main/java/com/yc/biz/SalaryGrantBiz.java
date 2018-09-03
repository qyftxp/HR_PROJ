package com.yc.biz;

import java.util.List;
import java.util.Map;

import com.yc.bean.SalaryGrant;

public interface SalaryGrantBiz {

	public void generate();

	public void addSalaryGrant(SalaryGrant sg);

	public List<SalaryGrant> find(Map<String, String> map);

	public void updateSalaryGrant(SalaryGrant sg);

}
