package com.yc.test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.bean.Employee;
import com.yc.biz.PublicCharBiz;
import com.yc.dao.EmployeeDao;
import com.yc.dao.PublicCharDao;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class EmployeeTest {
	
	@Resource(name="publicCharBizImpl")
	private PublicCharBiz publicCharBizImpl;
	
	@Resource(name="employeeDaoImpl")
	private EmployeeDao employeeDaoImpl;
	
	@Resource(name="publicCharDaoImpl")
	private PublicCharDao publicCharDaoImpl;
	
	@Test
    public void findOne() throws Exception {
		
		Map map = new HashMap();
		map.put("start", 0);
		map.put("pageSize", 5);
		map.put("human_file_status", "登记待复核");
		List<Employee> list = employeeDaoImpl.findAllBysql(map);
		System.out.println(list);
    }
	
	@Test
    public void add() throws Exception {
		
		Employee el = new Employee();
		el.setHuman_id("125666");
		el.setDepartment_name("人事部");
		el.setHuman_name("张三");
		el.setHuman_address("长沙市");
		el.setHuman_postcode("425300");
		el.setHuman_major_kind_name("工程师");
		el.setHuman_major_name("看看");
		el.setHuman_mobilephone("131412");
		el.setHuman_bank("建设银行");
		el.setHuman_account("4332225668855");
		el.setHuman_qq("1278354705");
		el.setHuman_email("1278354705@qq.com");
		el.setHuman_hobby("篮球");
		el.setHuman_speciality("编程");
		el.setHuman_sex("男");
		el.setHuman_party("党员");
		el.setHuman_nationality("中国");
		el.setHuman_race("汉");
		
		SimpleDateFormat sdf = new SimpleDateFormat ("yyyy-MM-dd");
		String s = "1996-03-29";
		el.setHuman_birthday(sdf.parse(s));
		el.setHuman_birthplace("广东");
		
		el.setHuman_age(22);
		el.setHuman_educated_degree("本科");
		el.setHuman_educated_years("18");
		el.setHuman_educated_major("网络工程");
		el.setHuman_id_card("431124199603291666");
		el.setRemark("很有实力");
		el.setSalary_standard_name("ss");
		el.setSalary_sum(6000.0);
		el.setDemand_salaray_sum(8000.0);
		el.setPaid_salary_sum(8000.0);
		
		el.setMajor_change_amount(0);
		el.setFile_chang_amount(0);
		el.setHuman_histroy_id(1);
		el.setHuman_family_membership("成员之间和睦");
		el.setHuman_picture("jlkkjjj");
		el.setCheck_status("待复核");
		el.setRegister("张三");
		el.setChecker("李四");
		el.setChanger("王五");
		
		
		el.setRegist_time(new Date());
		
		el.setCheck_time(new Date());
		el.setChange_time(new Date());
		el.setLastly_change_time(new Date());
		el.setDelete_time(new Date());
		el.setRecovery_time(new Date());
		el.setHuman_file_status("正常");
		
		
		int r = employeeDaoImpl.addEmployee(el);
		System.out.println(r+"添加成功");
    }
	
	@Test
    public void del() throws Exception {
		int r = employeeDaoImpl.delEmployee(1);
		
		System.out.println(r+"删除成功");
		
    }
	
	@Test


    public void testfindStatus(){
		
		Map map = new HashMap();
		map.put("department_name", "人事部");
		List<Employee> list = employeeDaoImpl.findAllByStatus(map);
		
		System.out.println(list.get(0).getHuf_id());
		System.out.println(list);
    }
	
	@Test
    public void findChar1()  {
		
		List list = publicCharBizImpl.findChar("爱好");
		
		System.out.println(list);
    }
	



    public void findChar() throws Exception {
		
		List list = publicCharBizImpl.findChar("爱好");
		
		System.out.println(list);
    }
	



}
