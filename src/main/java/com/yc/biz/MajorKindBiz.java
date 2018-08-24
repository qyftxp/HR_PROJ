package com.yc.biz;

import java.util.List;

import com.yc.bean.Major;
import com.yc.bean.MajorKind;

public interface MajorKindBiz {
	
	public List<MajorKind> findMajorKind();
	
	/**
	 * 根据职位分类编号查询所有职位
	 * */
	public List<Major> findMajor(String kind_id);
}
