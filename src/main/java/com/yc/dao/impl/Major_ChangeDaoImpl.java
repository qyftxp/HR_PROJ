package com.yc.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yc.bean.Employee;
import com.yc.bean.Major_change;
import com.yc.dao.Major_ChangeDao;

@Repository
public class Major_ChangeDaoImpl implements Major_ChangeDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	/**
	 * 调动登记
	 */
	@Override
	public int addMajor_change(Major_change major_change) {
		return sqlSession.insert("com.yc.dao.Major_ChangeDaoMapper.addMajor_change_register",major_change);
	}

	
	/**
	 * 查找调动记录
	 */
	@Override
	public List<Major_change> findAllBysql(Map map) {
		return sqlSession.selectList("com.yc.dao.Major_ChangeDaoMapper.findMajor_change",map);
	}

	
	/**
	 * 调动审核通过之后人员信息的修改
	 */
	@Override
	public int updateEmployee(Employee employee) {
		return sqlSession.update("com.yc.dao.Major_ChangeDaoMapper.updateEmployee",employee);
	}
	
	/**
	 * 调动审核未通过
	 */
	@Override
	public int deleteMajor_change(int mch_id) {
		return sqlSession.delete("com.yc.dao.Major_ChangeDaoMapper.delMajor_change",mch_id);
	}
	
	/**
	 * 修改人员信息:状态为调动待审核
	 */
	@Override
	public int updateStatus(Employee employee) {
		return sqlSession.update("com.yc.dao.Major_ChangeDaoMapper.updateStatus",employee);
	}
	
	
	@Override
	public int updateStatusByHuman_id(Employee employee) {
		return sqlSession.update("com.yc.dao.Major_ChangeDaoMapper.updateStatus1",employee);
	}
	
	
	/**
	 * 调动复核通过
	 */
	@Override
	public int updateMajor_change(Major_change major_change) {
		return sqlSession.update("com.yc.dao.Major_ChangeDaoMapper.updateMajor_change",major_change);
	}



	

}
