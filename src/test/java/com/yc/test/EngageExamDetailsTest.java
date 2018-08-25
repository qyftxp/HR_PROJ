package com.yc.test;

import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import com.yc.bean.EngageExamDetails;
import com.yc.biz.EngageExamDetailsBiz;
import com.yc.dao.EngageExamDetailsDao;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@AutoConfigureMockMvc//注入MockMvc实例
@SpringBootTest
public class EngageExamDetailsTest {
	@Resource(name="engageExamDetailsDaoImpl")
	private EngageExamDetailsDao engageExamDetailsDao;
	
	@Resource(name="engageExamDetailsBizImpl")
	private EngageExamDetailsBiz engageExamDetailsBiz;
	
	@Test
    public void add(){
		EngageExamDetails eed = new EngageExamDetails();
		eed.setExam_number("001");
		eed.setFirst_kind_id("01");
		eed.setFirst_kind_name("基础类");
		eed.setSecond_kind_id("01");
		eed.setSecond_kind_name("基本常识");
		eed.setQuestion_amount(5);
		EngageExamDetails r = engageExamDetailsDao.add(eed);
		System.out.println(r+"添加成功");
	}
	
	@Test
    public void findAll(){
		EngageExamDetails eed = new EngageExamDetails();
		eed.setExam_number("001");
		System.out.println(engageExamDetailsDao.findAll(eed));
	}
	
	@Test
    public void findList(){
		
	}
	
	@Test
    public void getCount(){		
		System.out.println(engageExamDetailsDao.getCount());
	}
}
