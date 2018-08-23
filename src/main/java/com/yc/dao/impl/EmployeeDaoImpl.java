package com.yc.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yc.bean.Employee;
import com.yc.bean.ModifyEmployee;
import com.yc.dao.EmployeeDao;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	/**
	 * 添加档案记录
	 * */
	@Override
	public int addEmployee(Employee employee) {
		return sqlSession.insert("com.yc.dao.EmployeeDaoMapper.addEmployee",employee);
		
	}
	
	/**
	 * 按条件查询档案记录
	 * */
	@Override
	public List<Employee> findAllBysql(Map map) {
		List<Employee> list = sqlSession.selectList("com.yc.dao.EmployeeDaoMapper.findEmployee",map);
		return list;
	}
	
	/**
	 * 删除档案记录
	 * */
	@Override
	public int delEmployee(int id) {
		
		
		return sqlSession.delete("com.yc.dao.EmployeeDaoMapper.delEmployee",id);
	}
	
	/**
	 * 备份档案记录
	 * */
	@Override
	public int addModifyEmployee(ModifyEmployee memployee) {
		
		return sqlSession.insert("com.yc.dao.EmployeeDaoMapper.addModifyEmployee",memployee);
	}
	
	
	/**
	 * 修改档案记录
	 * */
	@Override
	public int updateEmployee(Employee employee) {
		
		return sqlSession.update("com.yc.dao.EmployeeDaoMapper.updateEmployee",employee);
	}

}
