package com.yc.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.bean.Employee;
import com.yc.bean.SalaryGrantDetails;
import com.yc.biz.EmployeeBiz;
import com.yc.dao.SalaryGrantDetailsDao;
import com.yc.web.model.JsonModel;

@Controller
public class EmployeeController {
	
	@Resource(name="employeeBizImpl")
	private EmployeeBiz employeeBizImpl;
	
	@Resource(name="salaryGrantDetailsDaoImpl")
	private SalaryGrantDetailsDao salaryGrantDetailsDaoImpl;
	
	
	@RequestMapping("employee.action")
	@ResponseBody
	public JsonModel addEmployee(JsonModel jsonmodel,Employee employee){
		
		
		//档案编号：时间+身份证后4位
		String card = employee.getHuman_id_card();
		System.out.println(employee);
		String card4 = card.substring(card.length()-4,card.length());
		SimpleDateFormat sdf = new  SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String d = sdf.format(date);
		
		String human_id = d+card4;
		employee.setHuman_id(human_id);//档案编号
		
		//根据薪酬标准名称查询薪酬详情
		SalaryGrantDetails sgd =  salaryGrantDetailsDaoImpl.findByname(employee.getSalary_standard_name());
		
		//基本薪酬
		employee.setSalary_sum(sgd.getSale_sum());
		//应发薪酬总额
		employee.setDemand_salaray_sum(sgd.getDemand_salaray_sum());
		//实发薪酬总额
		employee.setPaid_salary_sum(sgd.getSalary_paid_sum());
		
		boolean flat = employeeBizImpl.addEmployee(employee);
		if(flat){
			jsonmodel.setCode(1);
		}else{
			jsonmodel.setCode(0);
		}
		
		return jsonmodel;
		
	}
	
}
