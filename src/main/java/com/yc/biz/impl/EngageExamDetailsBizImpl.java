package com.yc.biz.impl;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.yc.bean.EngageExamDetails;
import com.yc.biz.EngageExamDetailsBiz;
import com.yc.dao.EngageExamDetailsDao;
import com.yc.web.model.JsonModel;

@Service
public class EngageExamDetailsBizImpl implements EngageExamDetailsBiz {
	@Resource(name="engageExamDetailsDaoImpl")
	private EngageExamDetailsDao engageExamDetailsDao;

	@Override
	public boolean addEngageExamDetails(EngageExamDetails engageExamDetails) {
		EngageExamDetails r = engageExamDetailsDao.add(engageExamDetails);
		if(r != null){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public List<EngageExamDetails> findAll() {
		List<EngageExamDetails> list = engageExamDetailsDao.findAll();
		return list;
	}

	@Override
	public JsonModel<EngageExamDetails> findList(Map<String, Object> map) {
		List<EngageExamDetails> list = engageExamDetailsDao.findList(map);
		int total = (int)engageExamDetailsDao.getCount();
		JsonModel<EngageExamDetails> jm = new JsonModel<EngageExamDetails>();
		jm.setRows(list);
		jm.setTotal(total);		
		jm.setPages(Integer.parseInt(map.get("pages").toString()));
		jm.setPagesize(Integer.parseInt(map.get("pagesize").toString()));
		return jm;
	}
}
