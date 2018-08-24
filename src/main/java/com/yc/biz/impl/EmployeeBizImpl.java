package com.yc.biz.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.bean.Employee;
import com.yc.bean.ModifyEmployee;
import com.yc.biz.EmployeeBiz;
import com.yc.dao.EmployeeDao;

@Service

public class EmployeeBizImpl implements EmployeeBiz {
	
	@Resource(name="employeeDaoImpl")
	private EmployeeDao employeeDaoImpl;

	@Override
	public List<Employee> findAllBysql(Map map) {
		
		List<Employee> list = employeeDaoImpl.findAllBysql(map);
		return list;
	}

	@Override
	public boolean addEmployee(Employee employee) {
		
		int r = employeeDaoImpl.addEmployee(employee);
		if(r==1){
			return true;
		}else{
			return false;
		}
		
	}

	@Override
	public boolean delEmployee(int id) {
		int r = employeeDaoImpl.delEmployee(id);
		if(r==1){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 每次修改，备份一次
	 * */
	@Override
	@Transactional
	public boolean updateEmployee(Employee employee,ModifyEmployee memployee) {
		int r = employeeDaoImpl.updateEmployee(employee);
		
		int result = employeeDaoImpl.addModifyEmployee(memployee);
		
		if(r==1&&result==1){
			return true;
		}else{
			return false;
		}
		
	}
	
	//查状态为正常的人员信息
	@Override
	public List<Employee> findAllByStatus(Map map) {
		List<Employee> list = employeeDaoImpl.findAllByStatus(map);
		return list;
	}

}
