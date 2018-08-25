package com.yc.biz.impl;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.yc.bean.EngageMajorRelease;
import com.yc.biz.EngageMajorReleaseBiz;
import com.yc.dao.EngageMajorReleaseDao;
import com.yc.web.model.JsonModel;

@Service
public class EngageMajorReleaseBizImpl implements EngageMajorReleaseBiz {
	@Resource(name="engageMajorReleaseDaoImpl")
	private EngageMajorReleaseDao engageMajorReleaseDao;

	@Override
	public boolean addEngageMajorRelease(EngageMajorRelease engageMajorRelease) {
		EngageMajorRelease r = engageMajorReleaseDao.add(engageMajorRelease);
		if(r != null){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public boolean updateEngageMajorRelease(EngageMajorRelease engageMajorRelease) {
		EngageMajorRelease r = engageMajorReleaseDao.update(engageMajorRelease);
		if(r != null){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public List<EngageMajorRelease> findAll() {
		List<EngageMajorRelease> list = engageMajorReleaseDao.findAll();
		return list;
	}

	@Override
	public JsonModel<EngageMajorRelease> findList(Map<String, Object> map) {
		List<EngageMajorRelease> list = engageMajorReleaseDao.findList(map);
		int total = (int)engageMajorReleaseDao.getCount();
		JsonModel<EngageMajorRelease> jm = new JsonModel<EngageMajorRelease>();
		jm.setRows(list);
		jm.setTotal(total);		
		jm.setPages(Integer.parseInt(map.get("pages").toString()));
		jm.setPagesize(Integer.parseInt(map.get("pagesize").toString()));
		return jm;
	}

	@Override
	public boolean deleteEngageMajorRelease(int mre_id) {
		int r = engageMajorReleaseDao.delete(mre_id);
		if(r != 0){
			return true;
		}else{
			return false;
		}
	}
}
