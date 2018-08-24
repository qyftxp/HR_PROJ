package com.yc.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.yc.dao.SalaryGrantDetailsDao;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@AutoConfigureMockMvc//注入MockMvc实例
@SpringBootTest
public class SalaryGrantDetailsTest {
	@Resource(name="salaryGrantDetailsDaoImpl")
	private SalaryGrantDetailsDao salaryGrantDetailsDao;
	
	@Test//根据根据薪酬标准ID查询薪酬标准项目信息  
	public void test1(){
		System.out.println(salaryGrantDetailsDao.findByid("S001"));
	}
}
