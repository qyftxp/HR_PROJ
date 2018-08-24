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
	
	@RequestMapping("/salarystandarfind.action")
	public JsonModel find(@RequestParam("standard_name") String standard_name,
			@RequestParam("startTime") String startTime,
			@RequestParam("endTime") String endTime){
		System.out.println("进入控制器");
		Map<String,String> map=new HashMap<String,String>();
		map.put("startTime", startTime);
		map.put("endTime", endTime);
		map.put("standard_name", standard_name);
		System.out.println(endTime+""+startTime+""+standard_name);
//		List<SalaryStandard> list=salaryStandarBiz.find(map);
		
		JsonModel jm=new JsonModel();
//		jm.setCode(1);
//		jm.setObj(list);
		return  jm;
	}
	
}
