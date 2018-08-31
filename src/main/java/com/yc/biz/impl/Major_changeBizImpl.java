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
	public boolean transferRegister(Major_change major_change, String human_file_status,int huf_id) {

		int r = major_ChangeDao.addMajor_change(major_change);
		
		Employee employee=new Employee();
		
		employee.setHuf_id(huf_id);
		employee.setHuman_file_status(human_file_status);
		
		int status = major_ChangeDao.updateStatus(employee);

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
	
	
	@Transactional
	@Override
	public boolean deleteMajor_change(int mch_id,Employee employee) {
		
		int status = major_ChangeDao.updateStatus(employee);
		
		int r=major_ChangeDao.deleteMajor_change(mch_id);
		
		if(status==1 && r==1){
			return true;
		}else {
			return false;
		}
	}
	
	@Transactional
	@Override
	public boolean updateMajor_change(Major_change major_change, Employee employee) {
		
		int r=major_ChangeDao.updateMajor_change(major_change);
		
		System.out.println("r="+r);
		
		int personal=major_ChangeDao.updateEmployee(employee);
	
		int status=major_ChangeDao.updateStatusByHuman_id(employee);
		
		if(r==1 && personal==1 && status==1){
			return true;
		}else{
			return false;
		}
	}

}
