package com.yc.biz.impl;

import java.util.List;


import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.yc.bean.User;
import com.yc.biz.UserBiz;

import com.yc.dao.UserDao;

@Service("useBizImpl")
public class UseBizImpl implements UserBiz {

	@Resource(name = "userDaoImpl")
	private UserDao userDao;

	

	@Override
	public User login(User user) {
		List<User> list = (List<User>) userDao.findAll(user);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

}
