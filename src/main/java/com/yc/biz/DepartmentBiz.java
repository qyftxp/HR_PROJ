package com.yc.biz;

import java.util.List;

import com.yc.bean.Department;



public interface DepartmentBiz {
	/**
	 * 查询所有的部门类别
	 * @return
	 */
	public List<Department> getDepartmentList();
}
