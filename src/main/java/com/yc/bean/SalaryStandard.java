package com.yc.bean;

import java.io.Serializable;
import java.util.List;

public class SalaryStandard implements Serializable{
	private static final long serialVersionUID = 1L;
	private	Integer	ssd_id  ;    //ssd_id" : 主键，自动增长列
	private String  standard_id ; //standard_id" : 薪酬标准单编号    
	private String  standard_name; // standard_name" : 薪酬标准单名称
	private	String 	designer ;// designer" : 制定者名字
	private	String  register ;// register" : 登记人 
	private String 	checker ;//checker" : 复核人
	private String 	changer ;// changer" : 变更人
	private	String  regist_time ;// regist_time" : 登记时间
	private	String 	check_time ;// check_time" : 复核时间 
	private	String	change_time;// check_time" : 复核时间 
	private	Double	salary_sum ;// salary_sum" : 薪酬总额 
	private	String	check_status ;// check_status" :复核状态
	private	String	change_status ;// change_status" : 更改状态 
	private	String	check_comment ;//check_comment" : 复核意见
	private	String	remark ;//- check_status" : 复核状态
	private List<SalaryStandardDetails>  list;  //薪酬标准的具体项目
	
	private String startTime ;
	private String endTime;
	
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public List<SalaryStandardDetails> getList() {
		return list;
	}
	public void setList(List<SalaryStandardDetails> list) {
		this.list = list;
	}
	public Integer getSsd_id() {
		return ssd_id;
	}
	public void setSsd_id(Integer ssd_id) {
		this.ssd_id = ssd_id;
	}
	public String getStandard_id() {
		return standard_id;
	}
	public void setStandard_id(String standard_id) {
		this.standard_id = standard_id;
	}
	public String getStandard_name() {
		return standard_name;
	}
	public void setStandard_name(String standard_name) {
		this.standard_name = standard_name;
	}
	public String getDesigner() {
		return designer;
	}
	public void setDesigner(String designer) {
		this.designer = designer;
	}
	public String getRegister() {
		return register;
	}
	public void setRegister(String register) {
		this.register = register;
	}
	public String getChecker() {
		return checker;
	}
	public void setChecker(String checker) {
		this.checker = checker;
	}
	public String getChanger() {
		return changer;
	}
	public void setChanger(String changer) {
		this.changer = changer;
	}
	public String getRegist_time() {
		return regist_time;
	}
	public void setRegist_time(String regist_time) {
		this.regist_time = regist_time;
	}
	public String getCheck_time() {
		return check_time;
	}
	public void setCheck_time(String check_time) {
		this.check_time = check_time;
	}
	public String getChange_time() {
		return change_time;
	}
	public void setChange_time(String change_time) {
		this.change_time = change_time;
	}
	public Double getSalary_sum() {
		return salary_sum;
	}
	public void setSalary_sum(Double salary_sum) {
		this.salary_sum = salary_sum;
	}
	public String getCheck_status() {
		return check_status;
	}
	public void setCheck_status(String check_status) {
		this.check_status = check_status;
	}
	public String getChange_status() {
		return change_status;
	}
	public void setChange_status(String change_status) {
		this.change_status = change_status;
	}
	public String getCheck_comment() {
		return check_comment;
	}
	public void setCheck_comment(String check_comment) {
		this.check_comment = check_comment;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		return "SalaryStandard [ssd_id=" + ssd_id + ", standard_id=" + standard_id + ", standard_name=" + standard_name
				+ ", designer=" + designer + ", register=" + register + ", checker=" + checker + ", changer=" + changer
				+ ", regist_time=" + regist_time + ", check_time=" + check_time + ", change_time=" + change_time
				+ ", salary_sum=" + salary_sum + ", check_status=" + check_status + ", change_status=" + change_status
				+ ", check_comment=" + check_comment + ", remark=" + remark + ", list=" + list + "]";
	}
	
}
