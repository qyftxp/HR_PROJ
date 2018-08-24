package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.PublicChar;
import com.yc.biz.PublicCharBiz;
import com.yc.dao.PublicCharDao;

@Service
public class PublicCharBizImpl implements PublicCharBiz {
	
	@Resource(name="publicCharDaoImpl")
	private PublicCharDao publicCharDaoImpl;
	
	/**
	 * 添加公共属性
	 * @param pchar
	 * @return boolean
	 * */
	@Override
	public boolean addChar(PublicChar pchar) {
		
		int r = publicCharDaoImpl.addChar(pchar);
		
		if(r==1){
			return true;
		}else{
			return false;
		}
		
	}
	
	
	/**
	 * 根据属性名查值
	 * @param attribute_kind
	 * @return List<PublicChar>
	 * */
	@Override
	public List<PublicChar> findChar(String attribute_kind) {
		
		List<PublicChar> list = publicCharDaoImpl.findChar(attribute_kind);
		
		return list;
	}

}
