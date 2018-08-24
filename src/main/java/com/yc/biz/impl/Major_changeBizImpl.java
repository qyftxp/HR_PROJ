package com.yc.biz.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.bean.Employee;
import com.yc.bean.Major_change;
import com.yc.biz.Major_changeBiz;
import com.yc.dao.EmployeeDao;
import com.yc.dao.Major_ChangeDao;
import com.yc.dao.SalaryStandardDao;

@Service
public class Major_changeBizImpl implements Major_changeBiz {

	@Resource(name = "major_ChangeDaoImpl")
	private Major_ChangeDao major_ChangeDao;
	

	// 调动登记
	@Override
	@Transactional
	public boolean transferRegister(Major_change major_change, String human_file_status) {

		int r = major_ChangeDao.addMajor_change(major_change);

		int status = major_ChangeDao.updateEmployee(human_file_status);

		if (r == 1 && status == 1) {
			return true;
		} else {
			return false;
		}
	}

	
	//查询所有的调动记录
	@Override
	public List<Major_change> findAllBysql(Map map) {
		List<Major_change>   allMajor_change=major_ChangeDao.findAllBysql(map);
		return allMajor_change;
	}

	@Override
	public boolean deleteMajor_change(int mch_id) {
		int r=major_ChangeDao.deleteMajor_change(mch_id);
		if(r==1){
			return true;
		}else {
			return false;
		}
	}
	
	@Transactional
	@Override
	public boolean updateMajor_change(Major_change major_change, Employee employee) {
		
		int r=major_ChangeDao.updateMajor_change(major_change);
		
		int personal=major_ChangeDao.updateEmployee(employee);
		
		if(r==1 && personal==1){
			return true;
		}else{
			return false;
		}
	}

}
