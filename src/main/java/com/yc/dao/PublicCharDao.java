package com.yc.dao;

import java.util.List;

import com.yc.bean.PublicChar;

public interface PublicCharDao {
	
	public int addChar(PublicChar pchar);
	
	public List<PublicChar> findChar(String attribute_kind);
}
