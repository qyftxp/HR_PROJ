package com.yc.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.yc.bean.Department;
import com.yc.bean.User;
import com.yc.dao.DepartmentDao;
import com.yc.dao.SalaryStandardDao;
import com.yc.dao.UserDao;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@AutoConfigureMockMvc//注入MockMvc实例
@SpringBootTest
public class SalaryStandardTest {
	@Resource(name="salaryStandardDaoImpl")
	private SalaryStandardDao salaryDaoImpl;
	
	@Resource(name="userDaoImpl")
	private UserDao userDaoImpl ;
	
	@Resource(name="departmentDaoImpl")
	private DepartmentDao departmentDao ;
	
	@Test
	public void test1(){
		System.out.println(salaryDaoImpl.findByStandard_id(""));
	}
	
	@Test
	public void test2(){
		User u=new User();
		u.setU_true_name("a");
		u.setU_password("a");
		User user=(User) userDaoImpl.findAll(u);
		System.out.println(user);
	}
	
	
	@Test
	public void test3(){
		List<Department> department=departmentDao.findAll();
		 
		System.out.println(department);
	}
}
