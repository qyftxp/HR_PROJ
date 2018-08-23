package com.yc.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yc.bean.Department;
import com.yc.dao.DepartmentDao;

@Repository(value="departmentDaoImpl")
public class DepartmentDaoImpl implements DepartmentDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Department> findAll() {
		return this.sqlSession.selectList("com.yc.dao.DepartmentDaoMapper.getAllDepartment");
	}

}
