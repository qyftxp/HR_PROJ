package com.yc.test;

import java.util.Date;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import com.yc.bean.EngageExam;
import com.yc.dao.EngageExamDao;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@AutoConfigureMockMvc//注入MockMvc实例
@SpringBootTest
public class EngageExamTest {
	@Resource(name="engageExamDaoImpl")
	private EngageExamDao engageExamDao;
	
	@Test
    public void add(){
		EngageExam ee = new EngageExam();
		ee.setExam_number("001");
		ee.setMajor_kind_id("01");
		ee.setMajor_kind_name("技术部");
		ee.setMajor_id("01");
		ee.setMajor_name("经理");
		ee.setRegister("李四");
		ee.setRegist_time(new Date());
		ee.setLimite_time(60);
		EngageExam r = engageExamDao.add(ee);
		System.out.println(r+"添加成功");
	}
	
	@Test
    public void findAll(){
		EngageExam ee = new EngageExam();
		ee.setMajor_kind_name("技术部");
		System.out.println(engageExamDao.findAll(ee));
	}
}
