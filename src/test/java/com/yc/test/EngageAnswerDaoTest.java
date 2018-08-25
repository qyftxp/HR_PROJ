package com.yc.test;

import java.util.Date;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import com.yc.bean.EngageAnswer;
import com.yc.dao.EngageAnswerDao;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@AutoConfigureMockMvc//注入MockMvc实例
@SpringBootTest
public class EngageAnswerDaoTest {
	@Resource(name="engageAnswerDaoImpl")
	private EngageAnswerDao engageAnswerDao;
	
	@Test
    public void add(){
		EngageAnswer ea = new EngageAnswer();
		ea.setAnswer_number("001");
		ea.setExam_number("001");
		ea.setResume_id(1);
		ea.setInterview_id(1);
		ea.setHuman_name("张三");
		ea.setHuman_idcard("430222222222");
		ea.setMajor_kind_id("01");
		ea.setMajor_kind_name("技术部");
		ea.setMajor_id("01");
		ea.setMajor_name("经理");
		ea.setTest_time(new Date());
		ea.setUse_time("45分钟");
		ea.setTotal_point(90);
		EngageAnswer r = engageAnswerDao.add(ea);
		System.out.println(r+"添加成功");
	}
}
