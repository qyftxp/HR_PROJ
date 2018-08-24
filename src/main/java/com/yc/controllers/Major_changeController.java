package com.yc.controllers;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.bean.Major_change;
import com.yc.biz.Major_changeBiz;
import com.yc.web.model.JsonModel;

@Controller
public class Major_changeController {
	
	@Resource(name="major_changeBizImpl")
	private Major_changeBiz major_changeBiz;
	
	@RequestMapping("/major_changeRegister.action")
	public JsonModel Register(Major_change major_change){
		String human_file_status="调动待审核";
		JsonModel jm=new JsonModel();
		try {
			boolean bl=major_changeBiz.transferRegister(major_change, human_file_status);
			jm.setCode(1);
			jm.setObj(bl);
		} catch (Exception e) {
			jm.setCode(0);
			jm.setMsg("调动登记失败"+e.getMessage());
		}
		
		return jm;
	}
	
	
	public JsoModel find()
	
	
}
