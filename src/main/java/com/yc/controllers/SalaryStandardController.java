package com.yc.controllers;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.bean.SalaryStandard;
import com.yc.bean.SalaryStandardDetails;
import com.yc.bean.User;
import com.yc.biz.SalaryStandardBiz;
import com.yc.web.model.JsonModel;

@Controller
public class SalaryStandardController {
	@Resource(name="salaryStandardBizImpl")
	private SalaryStandardBiz salaryStandardBiz;
	
	/**
	 *	修改薪酬标准复核通过
	 */
	@RequestMapping("/checksalarystandarddetails.action")
	@ResponseBody
	public JsonModel updateCheck(SalaryStandard ss){
		System.out.println("进入修改薪酬标复核控制器");
		System.out.println(ss);
		JsonModel jm=new JsonModel();
		try {
			String s=ss.getStandard_id().substring(4);
			ss.setStandard_id(s);
			salaryStandardBiz.checkSalaryStandard(ss);
			jm.setCode(1);
			jm.setMsg("复核提交成功");
		} catch (Exception e) {
			e.printStackTrace();
			jm.setCode(0);
			jm.setMsg("复核提交失败"+e.getMessage());
		}
		return  jm;
	}
	/**
	 * 修改薪酬标准
	 */
	@RequestMapping("/upadatesalarystandarddetails.action")
	@ResponseBody
	public JsonModel update(SalaryStandard ss){
		System.out.println("进入修改薪酬标准控制器");
		System.out.println(ss);
		JsonModel jm=new JsonModel();
//		try {
//			String s="gai_"+ss.getStandard_id();
//			ss.setStandard_id(s);
//			salaryStandardBiz.updateSalaryStandard(ss);
			jm.setCode(1);
//			jm.setMsg("修改成功,等待复核");
//		} catch (Exception e) {
//			e.printStackTrace();
//			jm.setCode(0);
//			jm.setMsg("修改失败"+e.getMessage());
//		}
		return  jm;
	}
	/**
	 * 添加薪酬标准复核通过
	 */
	@RequestMapping("/addchecksalarystandard.action")
	@ResponseBody
	public JsonModel addCheck(SalaryStandard ss,HttpServletRequest request){
		System.out.println("进入添加薪酬标准复核控制器");
		System.out.println(ss);
		ss.setChecker("");
		JsonModel jm=new JsonModel();
		try {
//			salaryStandardBiz.addSalaryStandard(ss);
			jm.setCode(1);
			jm.setMsg("复核提交成功");
		} catch (Exception e) {
			e.printStackTrace();
			jm.setCode(0);
			jm.setMsg("复核提交失败"+e.getMessage());
		}
		return  jm;
	}
	
	/**
	 * 添加薪酬标准
	 */
	@RequestMapping("/addsalarystandard.action")
	@ResponseBody
	public JsonModel add(SalaryStandard ss,HttpServletRequest request){
		System.out.println("进入添加薪酬标准控制器");
		System.out.println(ss);
		String u=((User)request.getSession().getAttribute("user")).getU_true_name();
		System.out.println(u);
		ss.setDesigner(u);
		ss.setRegister(u);
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		ss.setRegist_time(sdf.format(date));
		ss.setChange_status("登记待复核");
		List<SalaryStandardDetails> list=new ArrayList<SalaryStandardDetails>();
		
		System.out.println(request.getParameter("基本工资"));
		list.add(shengcheng(request,"基本工资",ss,1));
		System.out.println(request.getParameter("出差补助"));
		list.add(shengcheng(request,"出差补助",ss,2));
		System.out.println(request.getParameter("交通补助"));
		list.add(shengcheng(request,"交通补助",ss,3));
		System.out.println(request.getParameter("误餐补助"));
		list.add(shengcheng(request,"误餐补助",ss,4));
		System.out.println(request.getParameter("年终奖"));
		list.add(shengcheng(request,"年终奖",ss,5));
		ss.setList(list);
		System.out.println(ss);
		JsonModel jm=new JsonModel();
		try {
			salaryStandardBiz.addSalaryStandard(ss);
			jm.setCode(1);
			jm.setMsg("添加成功，等待复核");
		} catch (Exception e) {
			e.printStackTrace();
			jm.setCode(0);
			jm.setMsg("添加失败"+e.getMessage());
		}
		return  jm;
	}
	
	/**
	 * 根据薪酬查询查看薪酬标准详情
	 */
	@RequestMapping("/salarystandarddetailsfind.action")
	@ResponseBody
	public JsonModel findx(HttpServletRequest request){
		System.out.println("进入根据薪酬查询查看薪酬标准详情控制器");
		
		System.out.println(request.getParameter("s"));
		List<SalaryStandardDetails> list=salaryStandardBiz.findDetailsById(request.getParameter("s"));
		System.out.println(list);
		JsonModel jm=new JsonModel();
		if(list!=null&&list.size()>0){
			jm.setCode(1);
			jm.setRows(list);
		}else{
			jm.setCode(0);
			jm.setMsg("没有查到数据");
		}
		return  jm;
	}
	/**
	 * 根据薪酬名称和登记时间查询薪酬标准
	 */				  
	@RequestMapping("/salarystandardfind.action")
	@ResponseBody
	public JsonModel find(SalaryStandard ss){
		System.out.println("进入根据薪酬名称和登记时间查询薪酬标准控制器");
		Map<String,String> map=new HashMap<String,String>();
		if(ss.getStartTime()!=null&&!ss.getStartTime().equals("")){
			map.put("startTime",ss.getStartTime());
		}
		if(ss.getEndTime()!=null&&!ss.getEndTime().equals("")){
			map.put("endTime", ss.getEndTime());
		}
		if(ss.getStandard_name()!=null&&!ss.getStandard_name().equals("")){
			map.put("standard_name", "%"+ss.getStandard_name()+"%");
		}
		if(ss.getCheck_status()!=null&&!ss.getCheck_status().equals("")){
			map.put("check_status", ss.getCheck_status());
		}
		System.out.println(ss.getStartTime()+""+ss.getEndTime()+""+ss.getStandard_name()+""+ss.getCheck_status());
		System.out.println(map);
		List<SalaryStandard> list=salaryStandardBiz.find(map);
		System.out.println(list);
		JsonModel jm=new JsonModel();
		if(list!=null&&list.size()>0){
			jm.setCode(1);
			jm.setRows(list);
		}else{
			jm.setCode(0);
			jm.setMsg("没有查到数据");
		}
		return  jm;
	}
	
	public SalaryStandardDetails shengcheng(HttpServletRequest request,String s,SalaryStandard ss,int i){
		Double number=0.0;
		if(request.getParameter(s).trim()==null ||request.getParameter(s).trim().equals("")){
		}else{
			number=Double.parseDouble(request.getParameter(s).trim());
		}
		SalaryStandardDetails ssd=new SalaryStandardDetails();
		ssd.setStandard_id(ss.getStandard_id());
		ssd.setStandard_name(ss.getStandard_name());
		ssd.setItem_id(i);
		ssd.setSalary(number);
		ssd.setItem_name(s);
		return ssd;
	}
}
