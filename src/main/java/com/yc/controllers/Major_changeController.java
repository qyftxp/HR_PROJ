package com.yc.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.bean.Employee;
import com.yc.bean.Major_change;
import com.yc.biz.EmployeeBiz;
import com.yc.biz.Major_changeBiz;
import com.yc.web.model.JsonModel;

@Controller
public class Major_changeController {
	
	@Resource(name="major_changeBizImpl")
	private Major_changeBiz major_changeBiz;
	@Resource(name="employeeBizImpl")
	private EmployeeBiz employeeBiz;
	
	@RequestMapping("/major_changeRegister.action")
	public JsonModel Register(Major_change major_change){
		String human_file_status="调动待审核";
		JsonModel jm=new JsonModel();
		try {
			boolean bl=major_changeBiz.transferRegister(major_change, human_file_status);
			jm.setCode(1);
			jm.setObj(bl);
		} catch (Exception e) {
			jm.setCode(0);
			jm.setMsg("调动登记失败"+e.getMessage());
		}
		
		return jm;
	}
	
	@RequestMapping("/major_changeFindStatus.action")
	@ResponseBody
	public JsonModel find(HttpServletRequest request){
			Map<String,Object> map=new HashMap<String,Object>();
			if(request.getParameter("department_name")!=null && !request.getParameter("department_name").equals("")){
				map.put("department_name",request.getParameter("department_name"));
			}
			System.out.println(request.getParameter("department_name")+"22222");
			if(request.getParameter("regist_time")!=null && !request.getParameter("regist_time").equals("")){
				map.put("regist_time",request.getParameter("regist_time"));
			}
			System.out.println(map+"=============================");
			List<Employee> list=employeeBiz.findAllByStatus(map);
			System.out.println(list);
			JsonModel jm=new JsonModel();
			if(list!=null && list.size()>0){
				jm.setCode(1);
				jm.setRows(list);
			}else{
				jm.setCode(0);
				jm.setMsg("未查询到状态为正常的人员信息");
			}
			System.out.println(jm);
			return jm;
	}
	
	
}
