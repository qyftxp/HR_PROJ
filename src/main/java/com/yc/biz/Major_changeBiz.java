package com.yc.biz;

import java.util.List;
import java.util.Map;

import com.yc.bean.Employee;
import com.yc.bean.Major_change;

public interface Major_changeBiz {
	
	public boolean transferRegister(Major_change major_change,String human_file_status);
	
	public List<Major_change> findAllBysql(Map map);
	
	public boolean deleteMajor_change(int mch_id);
	
	public boolean updateMajor_change(Major_change major_change,Employee employee);
}
