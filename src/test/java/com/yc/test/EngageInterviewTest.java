package com.yc.test;

import java.util.Date;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import com.yc.bean.EngageInterview;
import com.yc.dao.EngageInterviewDao;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@AutoConfigureMockMvc//注入MockMvc实例
@SpringBootTest
public class EngageInterviewTest {
	@Resource(name="engageInterviewDaoImpl")
	private EngageInterviewDao engageInterviewDao;
	
	@Test
    public void add(){
		EngageInterview ei = new EngageInterview();
		ei.setHuman_name("赵六");
		ei.setInterview_amount(1);
		ei.setHuman_major_kind_id("01");
		ei.setHuman_major_kind_name("技术部");
		ei.setHuman_major_id("01");
		ei.setHuman_major_name("经理");
		ei.setImage_degree("A");
		ei.setNative_language_degree("A");
		ei.setForeign_language_degree("A");
		ei.setResponse_speed_degree("A");
		ei.setEQ_degree("A");
		ei.setIQ_degree("A");
		ei.setMulti_quality_degree("A");
		ei.setRegister("张三");
		ei.setChecker("李四");
		ei.setRegiste_time(new Date());
		ei.setCheck_time(new Date());
		ei.setResume_id(1);
		ei.setResult("面试通过");
		ei.setInterview_comment("面试表现突出...");
		ei.setCheck_comment("给予通过...");
		ei.setInterview_status(1);
		ei.setCheck_status(1);
		EngageInterview r = engageInterviewDao.add(ei);
		System.out.println(r+"添加成功");
	}
	
	@Test
    public void findAll(){
		EngageInterview ei = new EngageInterview();
		ei.setHuman_major_kind_name("技术部");
		System.out.println(engageInterviewDao.findAll(ei));
	}
}
