package com.yc.test;

import java.util.Date;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.yc.bean.EngageMajorRelease;
import com.yc.dao.EngageMajorReleaseDao;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@AutoConfigureMockMvc//注入MockMvc实例
@SpringBootTest
public class EngageMajorReleaseTest {
	@Resource(name="engageMajorReleaseDaoImpl")
	private EngageMajorReleaseDao engageMajorReleaseDao;
	
	@Test
    public void add(){
		EngageMajorRelease emr = new EngageMajorRelease();
		emr.setFirst_kind_id("01");
		emr.setFirst_kind_name("集团");
		emr.setSecond_kind_id("01");
		emr.setSecond_kind_name("公司");
		emr.setThird_kind_id("01");
		emr.setThird_kind_name("部门");
		emr.setMajor_kind_id("01");
		emr.setMajor_kind_name("技术部");
		emr.setMajor_id("01");
		emr.setMajor_name("经理");
		emr.setHuman_amount(1);
		emr.setEngage_type("社会招聘");
		emr.setDeadline(new Date());
		emr.setRegister("李四");
		emr.setChanger(null);
		emr.setRegist_time(new Date());
		emr.setChange_time(null);
		emr.setMajor_describe("管理项目的进程...");
		emr.setEngage_required("要求本科以上的学历...");
		EngageMajorRelease r = engageMajorReleaseDao.add(emr);
		System.out.println(r+"添加成功");
	}
	
	@Test
    public void update(){
		EngageMajorRelease emr = new EngageMajorRelease();
		emr.setEngage_type("校园招聘");
		emr.setHuman_amount(2);
		emr.setDeadline(new Date());
		emr.setChanger("王五");
		emr.setMajor_describe("管理项目的进程...555");
		emr.setEngage_required("要求本科以上的学历...555");
		emr.setMre_id(1);
		EngageMajorRelease r = engageMajorReleaseDao.update(emr);
		System.out.println(r+"修改成功");
	}
	
	@Test
    public void findAll(){
		System.out.println(engageMajorReleaseDao.findAll());
	}
	
	@Test
    public void getCount(){		
		System.out.println(engageMajorReleaseDao.getCount());
	}
	
	@Test
    public void delete(){		
		System.out.println(engageMajorReleaseDao.delete(1));
	}
}
