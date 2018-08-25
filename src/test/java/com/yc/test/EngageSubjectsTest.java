package com.yc.test;

import java.util.Date;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.yc.bean.EngageSubjects;
import com.yc.dao.EngageSubjectsDao;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@AutoConfigureMockMvc//注入MockMvc实例
@SpringBootTest
public class EngageSubjectsTest {
	@Resource(name="engageSubjectsDaoImpl")
	private EngageSubjectsDao engageSubjectsDao;
	
	@Test
    public void add(){
		EngageSubjects es = new EngageSubjects();
		es.setFirst_kind_id("01");
		es.setFirst_kind_name("基础类");
		es.setSecond_kind_id("01");
		es.setSecond_kind_name("基本常识");
		es.setRegister("李四");
		es.setRegist_time(new Date());
		es.setDerivation("公共常识");
		es.setContent("中国的首都在哪？");
		es.setKey_a("上海");
		es.setKey_b("北京");
		es.setKey_c("广州");
		es.setKey_d("深圳");
		es.setCorrect_key("北京");
		EngageSubjects r = engageSubjectsDao.add(es);
		System.out.println(r+"添加成功");
	}
	
	@Test
    public void update(){
		EngageSubjects es = new EngageSubjects();
		es.setDerivation("公共常识");
		es.setContent("被誉为一夜崛起的是中国哪个城市？");
		es.setKey_a("上海");
		es.setKey_b("广州");
		es.setKey_c("北京");
		es.setKey_d("深圳");
		es.setCorrect_key("深圳");
		es.setSub_id(1);
		EngageSubjects r = engageSubjectsDao.update(es);
		System.out.println(r+"修改成功");
	}
	
	@Test
    public void findAll(){
		EngageSubjects es = new EngageSubjects();
		es.setFirst_kind_name("基础类");
		es.setSecond_kind_name("基本常识");
		System.out.println(engageSubjectsDao.findAll(es));
	}
	
	@Test
    public void getCount(){		
		System.out.println(engageSubjectsDao.getCount());
	}
}
