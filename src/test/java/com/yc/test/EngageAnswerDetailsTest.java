package com.yc.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.yc.bean.EngageAnswerDetails;
import com.yc.dao.EngageAnswerDetailsDao;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@AutoConfigureMockMvc//注入MockMvc实例
@SpringBootTest
public class EngageAnswerDetailsTest {
	@Resource(name="engageAnswerDetailsDaoImpl")
	private EngageAnswerDetailsDao engageAnswerDetailsDao;
	
	@Test
    public void add(){
		EngageAnswerDetails ead = new EngageAnswerDetails();
		ead.setAnswer_number("001");
		ead.setSubject_id(1);
		ead.setAnswer("数据库");
		EngageAnswerDetails r = engageAnswerDetailsDao.add(ead);
		System.out.println(r+"添加成功");
	}
	
	/*@Test
    public void findAll(){
		System.out.println(engageAnswerDetailsDao.findAll());
	}*/
	
	@Test
    public void findAll(){
		EngageAnswerDetails ead = new EngageAnswerDetails();
		ead.setSubject_id(1);
		System.out.println(engageAnswerDetailsDao.findAll(ead));
	}
}
