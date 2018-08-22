package com.yc.bean;

import java.io.Serializable;

public class SalaryStandard implements Serializable{
	private	Integer	ssd_id  ;    //ssd_id" : 主键，自动增长列
	private String standard_id ; //standard_id" : 薪酬标准单编号    
	private String standard_name; // standard_name" : 薪酬标准单名称
	private	String 	designer ;// designer" : 制定者名字
	private	String register ;// register" : 登记人 
	private String 	checker ;//checker" : 复核人
	private String 	changer ;// changer" : 变更人
	private	String regist_time ;// regist_time" : 登记时间
	private	String 	check_time ;// check_time" : 复核时间 
	private	String	change_time;// check_time" : 复核时间 
	private	Double	salary_sum ;// salary_sum" : 薪酬总额 
	private	String	check_status ;// check_status" : 是否经过复核 
	private	String	change_status ;// change_status" : 更改状态 
	private	String	check_comment ;//check_comment" : 复核意见
	private	String	remark ;//- check_status" : 复核状态
}
