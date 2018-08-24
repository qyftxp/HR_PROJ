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
import com.yc.biz.SalaryStandarBiz;

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
    	SalaryStandarBiz salaryStandarBizImpl = (SalaryStandarBiz) ac.getBean("salaryStandarBizImpl");
    	
    	
    	List<?> human_hobbyList = publicCharBizImpl.findChar("爱好");
    	
    	List<?> human_specialityList = publicCharBizImpl.findChar("特长");
    	
    	List<?> human_partyList = publicCharBizImpl.findChar("政治面貌");
    	
    	List<?> human_nationalityList = publicCharBizImpl.findChar("国籍");
    	
    	List<?> human_raceList = publicCharBizImpl.findChar("民族");
    	
    	List<?> human_educated_degreeList = publicCharBizImpl.findChar("学历");
    	
    	List<?> human_educated_yearsList = publicCharBizImpl.findChar("教育年限");
    	
    	List<?> human_educated_majorList = publicCharBizImpl.findChar("专业");
    	
    	List<?> human_sexList = publicCharBizImpl.findChar("性别");
    	
    	//所有部门
    	List<?> department_nameList = departmentBizImpl.getDepartmentList();
    	
    	//所有职位分类
    	List<?> human_major_kind_nameList = majorKindBizImpl.findMajorKind();
    	
    	//所有薪酬标准
    	List<?> salary_standardList = salaryStandarBizImpl.find(null);
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
    	
    }
	
}
