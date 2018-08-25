package com.yc.test;

import java.util.Date;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import com.yc.bean.EngageResume;
import com.yc.dao.EngageResumeDao;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@AutoConfigureMockMvc//注入MockMvc实例
@SpringBootTest
public class EngageResumeTest {
	@Resource(name="engageResumeDaoImpl")
	private EngageResumeDao engageResumeDao;
	
	@Test
    public void add(){
		EngageResume er = new EngageResume();
		er.setHuman_name("赵六");
		er.setEngage_type("校园招聘");
		er.setHuman_address("湖南衡阳");
		er.setHuman_postcode("412500");
		er.setHuman_major_kind_id("01");
		er.setHuman_major_kind_name("技术部");
		er.setHuman_major_id("01");
		er.setHuman_major_name("经理");
		er.setHuman_telephone("15873396987");
		er.setHuman_email("2232108369@qq.com");
		er.setHuman_hobby("打篮球");
		er.setHuman_specility("编程");
		er.setHuman_sex("男");
		er.setHuman_party("共青团员");
		er.setHuman_race("汉族");
		er.setHuman_age(22);
		er.setHuman_educated_degree("本科");
		er.setHuman_educated_major("计算机科学与技术");
		er.setHuman_college("湖南工学院");
		er.setHuman_idcard("430225333333");
		er.setDemand_salary_standard(8000.00);
		er.setHuman_history_records("应届生");
		er.setRemark("希望的城市是广州...");
		er.setRecomandation("很优秀...");
		er.setHuman_picture(null);
		er.setCheck_status(1);
		er.setRegister("张三");
		er.setRegist_time(new Date());
		er.setChecker("李四");
		er.setCheck_time(new Date());
		er.setInterview_status(1);
		er.setTotal_points(90);
		er.setTest_amount(1);
		er.setTest_checker("王五");
		er.setTest_check_time(new Date());
		er.setPass_register("张三");
		er.setPass_regist_time(new Date());
		er.setPass_checker("李四");
		er.setPass_check_time(new Date());
		er.setPass_check_status(1);
		er.setPass_checkComment("此人非常优秀，特申请您录用...");
		er.setPass_passComment("批准...");
		EngageResume r = engageResumeDao.add(er);
		System.out.println(r+"添加成功");
	}
	
	@Test
    public void findAll(){
		EngageResume er = new EngageResume();
		er.setHuman_major_kind_name("技术部");
		System.out.println(engageResumeDao.findAll(er));
	}
}
