package com.yc.dao;

import java.util.List;

import com.yc.bean.Major;
import com.yc.bean.MajorKind;

public interface MajorKindDao {
	public List<MajorKind> findMajorKind();
	
	/**
	 * 根据职位分类编号查询所有职位
	 * */
	public List<Major> findMajor(String kind_id);

	
	
	/**
	 * 根据职位分类编号查询所有职位
	 * */
	public List<Major> findNameMajor(String kind_name);

}
