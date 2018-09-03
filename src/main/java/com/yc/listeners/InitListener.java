package com.yc.listeners;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.yc.biz.DepartmentBiz;
import com.yc.biz.MajorKindBiz;
import com.yc.biz.PublicCharBiz;
import com.yc.biz.SalaryStandardBiz;

public class InitListener implements ServletContextListener {

	private ApplicationContext ac;
	
    public InitListener() {
    }

    public void contextDestroyed(ServletContextEvent sce)  {
    }

    public void contextInitialized(ServletContextEvent sce)  { 
    	
    	ServletContext application = sce.getServletContext();
    	
    	System.out.println("监听启动");
    	
    	//取到了spring容器
    	ac = WebApplicationContextUtils.getWebApplicationContext(application);
    	
    	//数据字典
    	PublicCharBiz publicCharBizImpl = (PublicCharBiz) ac.getBean("publicCharBizImpl");
    	
    	//部门
    	DepartmentBiz departmentBizImpl = (DepartmentBiz) ac.getBean("departmentBizImpl");
    	
    	//职位分类
    	MajorKindBiz majorKindBizImpl = (MajorKindBiz) ac.getBean("majorKindBizImpl");
    	
    	//薪酬标准
    	SalaryStandardBiz salaryStandardBizImpl = (SalaryStandardBiz) ac.getBean("salaryStandardBizImpl");
    	
    	
    	List<?> human_hobbyList = publicCharBizImpl.findChar("爱好");
    	
    	List<?> human_specialityList = publicCharBizImpl.findChar("特长");
    	
    	List<?> human_partyList = publicCharBizImpl.findChar("政治面貌");
    	
    	List<?> human_nationalityList = publicCharBizImpl.findChar("国籍");
    	
    	List<?> human_raceList = publicCharBizImpl.findChar("民族");
    	
    	List<?> human_educated_degreeList = publicCharBizImpl.findChar("学历");
    	
    	List<?> human_educated_yearsList = publicCharBizImpl.findChar("教育年限");
    	
    	List<?> human_educated_majorList = publicCharBizImpl.findChar("专业");
    	
    	List<?> human_sexList = publicCharBizImpl.findChar("性别");
    	
    	List<?> major_kind_nameList = publicCharBizImpl.findChar("职位分类");
    	List<?> major_nameList = publicCharBizImpl.findChar("职位名称");
    	List<?> engage_typeList = publicCharBizImpl.findChar("招聘类型");
    	
    	//试题分类级别
    	List<?> first_kind_nameList = publicCharBizImpl.findChar("试题I级分类");   	
    	List<?> second_kind_nameList = publicCharBizImpl.findChar("试题II级分类");
    	
    	//评价
    	List<?> image_degreeList = publicCharBizImpl.findChar("形象评价");
    	List<?> native_language_degreeList = publicCharBizImpl.findChar("口才评价");
    	List<?> EQ_degreeList = publicCharBizImpl.findChar("EQ评价");
    	List<?> IQ_degreeList = publicCharBizImpl.findChar("IQ评价");
    	List<?> foreign_language_degreeList = publicCharBizImpl.findChar("外语水平");
    	List<?> response_speed_degreeList = publicCharBizImpl.findChar("应变能力");
    	List<?> multi_quality_degreeList = publicCharBizImpl.findChar("综合素质");
    	
    	//所有部门
    	List<?> department_nameList = departmentBizImpl.getDepartmentList();
    	
    	//所有职位分类
    	List<?> human_major_kind_nameList = majorKindBizImpl.findMajorKind();
    	
    	//所有薪酬标准
    	List<?> salary_standardList = salaryStandardBizImpl.find(null);
    	System.out.println(salary_standardList);
    	
    	
    	application.setAttribute("human_hobbyList", human_hobbyList);
    	application.setAttribute("human_specialityList", human_specialityList);
    	application.setAttribute("human_partyList", human_partyList);
    	application.setAttribute("human_nationalityList", human_nationalityList);
    	application.setAttribute("human_raceList", human_raceList);
    	
    	application.setAttribute("human_educated_degreeList", human_educated_degreeList);
    	application.setAttribute("human_educated_yearsList", human_educated_yearsList);
    	application.setAttribute("human_educated_majorList", human_educated_majorList);
    	application.setAttribute("human_sexList", human_sexList);
    	
    	application.setAttribute("department_nameList", department_nameList);
    	application.setAttribute("human_major_kind_nameList", human_major_kind_nameList);
    	application.setAttribute("salary_standardList", salary_standardList);
    	
    	//试题分类级别
    	application.setAttribute("first_kind_nameList", first_kind_nameList);
    	application.setAttribute("second_kind_nameList", second_kind_nameList);
    	
    	//评价
    	application.setAttribute("image_degreeList", image_degreeList);
    	application.setAttribute("native_language_degreeList", native_language_degreeList);
    	application.setAttribute("EQ_degreeList", EQ_degreeList);
    	application.setAttribute("IQ_degreeList", IQ_degreeList);
    	application.setAttribute("foreign_language_degreeList", foreign_language_degreeList);
    	application.setAttribute("response_speed_degreeList", response_speed_degreeList);
    	application.setAttribute("multi_quality_degreeList", multi_quality_degreeList);
    	
    	application.setAttribute("major_kind_nameList", major_kind_nameList);
    	application.setAttribute("major_nameList", major_nameList);
    	application.setAttribute("engage_typeList", engage_typeList);
    }
}
