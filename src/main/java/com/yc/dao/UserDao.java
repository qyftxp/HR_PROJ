package com.yc.dao;

import java.util.List;

import com.yc.bean.User;

public interface UserDao {
	List<User> findAll(User user, String string);
}
