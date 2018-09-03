package com.yc.biz.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.bean.Department;
import com.yc.bean.Employee;
import com.yc.bean.SalaryGrant;
import com.yc.bean.SalaryGrantDetails;
import com.yc.bean.SalaryStandardDetails;
import com.yc.biz.DepartmentBiz;
import com.yc.biz.EmployeeBiz;
import com.yc.biz.SalaryGrantBiz;
import com.yc.dao.EmployeeDao;
import com.yc.dao.SalaryGrantDao;
import com.yc.dao.SalaryGrantDetailsDao;
@Service
public class SalaryGrantBizImpl implements SalaryGrantBiz {
	@Resource(name="salaryGrantDaoImpl")
	private SalaryGrantDao salaryGrantDao;
	
	@Resource(name="salaryGrantDetailsDaoImpl")
	private SalaryGrantDetailsDao salaryGrantDetailsDao;
	
	
	@Resource(name="departmentBizImpl")
	private DepartmentBiz departmentBiz;
	
	@Resource(name="employeeDaoImpl")
	private EmployeeDao employeeDaoImpl;
	
	/**
	 *	复核薪酬发放单
	 */
	@Transactional
	@Override
	public void updateSalaryGrant(SalaryGrant sg) {
		salaryGrantDao.updateSalaryGrant(sg);
		salaryGrantDetailsDao.updateSalaryGrantDetails(sg.getList());
	}
	/**
	 * 添加薪酬发放单
	 */
	@Transactional
	@Override
	public void addSalaryGrant(SalaryGrant sg){
		salaryGrantDao.addSalaryGrant(sg);
		salaryGrantDetailsDao.addSalaryGrantDetailsList(sg.getList());
	}
	
	/**
	 * 生成薪酬发放单
	 */
	@Transactional
	@Override
	public void generate() {
		List<SalaryGrant> slist=new ArrayList<SalaryGrant>();
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//1.查到所有的部门  -->获取部门名称，根据部门名称+时间生成薪酬发放编号
		List<Department> dlist =departmentBiz.getDepartmentList();
		for(Department d:dlist){
			SalaryGrant sg=new SalaryGrant();
			sg.setSalary_grant_id(d.getDepartment_name()+sdf.format(date));
			sg.setDepartment_name(d.getDepartment_name());
			//2.根据每个部门查询部门员工-->获取总人数  
			sg.setHuman_amount(employeeDaoImpl.findCount(d.getDepartment_name()));
			//4.获取他们基本工资的总额
			sg.setSalary_sum(employeeDaoImpl.findCountSalary_sumByName(d.getDepartment_name()));
			//5.创造SalaryGrant 复核状态为待登记  将
			sg.setCheck_status("待登记");
			slist.add(sg);		
			
		}
		salaryGrantDao.addSalaryGrant(slist);
		//6.查询到所有的员工 获取 部门生成 薪酬发放编号  获取薪酬标准名称和编号 档案编号 姓名 标准薪酬总额  应发薪酬总额
		//7.生成对应的薪酬发放详细信息
		List<Employee> elist=employeeDaoImpl.findAll();
		List<SalaryGrantDetails> sgdlist=new ArrayList<SalaryGrantDetails>();
		for(Employee e:elist){
			SalaryGrantDetails  sgd=new SalaryGrantDetails();
			sgd.setSalary_standard_id(e.getSalary_standard_id());
			sgd.setSalary_standard_name(e.getSalary_standard_name());
			sgd.setSalary_grant_id(e.getDepartment_name()+sdf.format(date));//薪酬发放编号
			sgd.setHuman_id(e.getHuman_id());
			sgd.setHuman_name(e.getHuman_name());
			sgd.setSalary_standard_sum(e.getSalary_sum());
			sgdlist.add(sgd);
		}
		salaryGrantDetailsDao.addSalaryGrantDetailsList(sgdlist);
	}

	/**
	 * 批量添加员工薪酬发放详情 
	 */
	@Override
	public List<SalaryGrant> find(Map<String, String> map) {
		List<SalaryGrant> list=salaryGrantDao.findByMap(map);
		return list;
	}

}
