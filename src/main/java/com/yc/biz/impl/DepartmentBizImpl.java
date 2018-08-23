package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.Department;
import com.yc.biz.DepartmentBiz;
import com.yc.dao.DepartmentDao;

@Service
public class DepartmentBizImpl implements DepartmentBiz {
	
	@Resource(name="departmentDaoImpl")
	private DepartmentDao departmentDao;
	
	
	@Override
	public List<Department> getDepartmentList() {
		List<Department> departments=departmentDao.findAll();
		return departments;
	}
}
