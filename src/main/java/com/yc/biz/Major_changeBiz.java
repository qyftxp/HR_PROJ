package com.yc.biz;

import java.util.List;
import java.util.Map;

import com.yc.bean.Employee;
import com.yc.bean.Major_change;

public interface Major_changeBiz {
	

	public boolean transferRegister(Major_change major_change,String human_file_status,int huf_id);
	
	public List<Major_change> findAllBysql(Map map);
	
	public boolean deleteMajor_change(String human_id,Employee employee);
	
	public boolean updateMajor_change(Major_change major_change,Employee employee);
	
	public boolean deleteMajor_changeOnly(String human_id);

}
