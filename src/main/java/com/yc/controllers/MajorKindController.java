package com.yc.controllers;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.bean.Major;
import com.yc.biz.MajorKindBiz;
import com.yc.web.model.JsonModel;

@Controller
public class MajorKindController {
	
	@Resource(name="majorKindBizImpl")
	private MajorKindBiz majorKindBizImpl;
	
	@RequestMapping("MajorKind_list.action")
	@ResponseBody
	public JsonModel<Major> findMajor(Major m,JsonModel<Major> jsonmodel){
		System.out.println(m.getMajor_kind_id());
		List<Major> list = majorKindBizImpl.findMajor(m.getMajor_kind_id());
		
		System.out.println(list);
		if(list!=null && list.size()>0){
			jsonmodel.setCode(1);
			jsonmodel.setRows(list);
		}else{
			jsonmodel.setCode(0);
			jsonmodel.setMsg("错误");
		}
		return jsonmodel;
		
	}
	
	//按职位分类名称查
	@RequestMapping("MajorKindName_list.action")
	@ResponseBody
	public JsonModel<Major> findMajorName(Major m,JsonModel<Major> jsonmodel){
		//System.out.println(m.getMajor_kind_name());
		List<Major> list = majorKindBizImpl.findNameMajor(m.getMajor_kind_name());
		
		System.out.println(list);
		if(list!=null && list.size()>0){
			jsonmodel.setCode(1);
			jsonmodel.setRows(list);
		}else{
			jsonmodel.setCode(0);
			jsonmodel.setMsg("错误");
		}
		return jsonmodel;
		
	}
}
