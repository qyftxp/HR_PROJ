package com.yc.biz.impl;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.yc.bean.EngageSubjects;
import com.yc.biz.EngageSubjectsBiz;
import com.yc.dao.EngageSubjectsDao;
import com.yc.web.model.JsonModel;

@Service
public class EngageSubjectsBizImpl implements EngageSubjectsBiz {
	@Resource(name="engageSubjectsDaoImpl")
	private EngageSubjectsDao engageSubjectsDao;

	@Override
	public boolean addEngageSubjects(EngageSubjects engageSubjects) {
		EngageSubjects r = engageSubjectsDao.add(engageSubjects);
		if(r != null){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public boolean updateEngageSubjects(EngageSubjects engageSubjects) {
		EngageSubjects r = engageSubjectsDao.update(engageSubjects);
		if(r != null){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public List<EngageSubjects> findAll(EngageSubjects engageSubjects) {
		List<EngageSubjects> list = engageSubjectsDao.findAll(engageSubjects);
		return list;
	}

	@Override
	public JsonModel<EngageSubjects> findList(Map<String, Object> map) {
		List<EngageSubjects> list = engageSubjectsDao.findList(map);
		int total = (int)engageSubjectsDao.getCount();
		JsonModel<EngageSubjects> jm = new JsonModel<EngageSubjects>();
		jm.setRows(list);
		jm.setTotal(total);		
		jm.setPages(Integer.parseInt(map.get("pages").toString()));
		jm.setPagesize(Integer.parseInt(map.get("pagesize").toString()));
		return jm;
	}
}
