package com.yc.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yc.bean.User;
import com.yc.dao.UserDao;

@Repository(value="userDaoImpl")
public class UserDaoImpl implements UserDao {
	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public List<User> findAll(User user) {
		return this.sqlSession.selectList("com.yc.dao.UserDaoMapper.getUserByLogin",user);
	}

}
