package com.yc.biz;

import java.util.List;

import com.yc.bean.PublicChar;

public interface PublicCharBiz {
	
	public boolean addChar(PublicChar pchar);
	
	public List<PublicChar> findChar(String attribute_kind);
}
