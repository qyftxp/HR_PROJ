package com.yc.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yc.bean.SalaryStandard;
import com.yc.biz.SalaryStandarBiz;
import com.yc.web.model.JsonModel;

@Controller
public class SalaryStandarController {
	@Resource(name="salaryStandarBizImpl")
	private SalaryStandarBiz salaryStandarBiz;
	
	@RequestMapping("/salarystandardfind.action")
	public JsonModel find(SalaryStandard ss){
		System.out.println("进入控制器");
		Map<String,String> map=new HashMap<String,String>();
		if(ss.getStartTime()!=null&&ss.getStartTime().equals("")){
			map.put("startTime",ss.getStartTime());
		}
		if(ss.getEndTime()!=null&&ss.getEndTime().equals("")){
			map.put("endTime", ss.getEndTime());
		}
		if(ss.getStandard_name()!=null&&ss.getStandard_name().equals("")){
			map.put("standard_name", "%"+ss.getStandard_name()+"%");
		}
		System.out.println(ss.getStartTime()+""+ss.getEndTime()+""+ss.getStandard_name());
		List<SalaryStandard> list=salaryStandarBiz.find(map);
		System.out.println(list);
		JsonModel jm=new JsonModel();
		jm.setCode(1);
		jm.setObj(list);
		return  jm;
	}
	
}
