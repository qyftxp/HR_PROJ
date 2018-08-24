package com.yc.biz.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.Employee;
import com.yc.bean.Major_change;
import com.yc.biz.Major_changeBiz;
import com.yc.dao.EmployeeDao;
import com.yc.dao.Major_ChangeDao;

@Service
public class Major_changeBizImpl implements Major_changeBiz {
	
	@Resource(name="major_ChangeDaoImpl")
	private Major_ChangeDao major_ChangeDao;
	@Resource(name="")
	
	
	@Override
	public boolean addMajor_change(Major_change major_change, String human_file_status) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Major_change> findAllBysql(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteMajor_change(int mch_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateMajor_change(Major_change major_change, Employee employee) {
		// TODO Auto-generated method stub
		return false;
	}

	

}
