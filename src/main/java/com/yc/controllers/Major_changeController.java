package com.yc.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	@ResponseBody
	public JsonModel Register(Major_change major_change,HttpServletRequest request){
		String human_id=major_change.getHuman_id();
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("human_id", human_id);
		List<Major_change> list=major_changeBiz.findAllBysql(map);
		if(list!=null || !list.equals("")){
			boolean isDelete=major_changeBiz.deleteMajor_changeOnly(human_id);
		}
		
		String human_file_status="调动待审核";
		Integer huf_id=Integer.parseInt(request.getParameter("huf_id"));
		major_change.setStatus("调动待审核");
		String change_reason=major_change.getChange_reason();
		JsonModel jm=new JsonModel();
		String new_major_name=major_change.getNew_major_name();
		if(change_reason!=null && !change_reason.equals("")){
			if(new_major_name!=null && !new_major_name.equals("") ){
				try {
					boolean bl=major_changeBiz.transferRegister(major_change, human_file_status,huf_id);
					jm.setCode(1);
					jm.setObj(bl);
				} catch (Exception e) {
					jm.setCode(0);
					jm.setMsg("调动登记失败"+e.getMessage());
				}
			}else{
				jm.setCode(0);
				jm.setMsg("新职位名称不能为空,请重新选择");
			}
		}else{
			jm.setCode(0);
			jm.setMsg("调动原因不能为空,请填写");
		}	
		return jm;
	}
	
	@RequestMapping("/major_changeFindStatus.action")
	@ResponseBody
	public JsonModel find(HttpServletRequest request,HttpSession session){
			Map<String,Object> map=new HashMap<String,Object>();
			if(request.getParameter("department_name")!=null && !request.getParameter("department_name").equals("")){
				map.put("department_name",request.getParameter("department_name"));
			}
			if(request.getParameter("regist_time")!=null && !request.getParameter("regist_time").equals("")){
				map.put("regist_time",request.getParameter("regist_time"));
			}
			List<Employee> list=employeeBiz.findAllByStatus(map);
			
			
			JsonModel jm=new JsonModel();
			if(list!=null && list.size()>0){
				jm.setCode(1);
				jm.setRows(list);
			}else{
				jm.setCode(0);
				jm.setMsg("未查询到状态为正常的人员信息");
			}
			return jm;
	}
	
	@RequestMapping("/findWaitCheckDetail.action")
	public String findWaitCheckDetail(HttpServletRequest request){
		
		Map<String,Object> map=new HashMap<String,Object>();
		
		map.put("human_id", request.getParameter("human_id"));
		
		List<Major_change> list=major_changeBiz.findAllBysql(map);
		JsonModel jm=new JsonModel();
		if(list!=null && list.size()>0){
			jm.setCode(1);
			jm.setRows(list);
		}else{
			jm.setCode(0);
			jm.setMsg("查询失败");
		}
		request.setAttribute("jsonModel", jm.getRows());
		return  "transfer/transferCheck";
		
	}
	
	
	
	@RequestMapping("/findWaitCheck.action")
	@ResponseBody
	public JsonModel findWaitCheck(HttpServletRequest request){
		
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("status", "调动待审核");
		List<Major_change> list=major_changeBiz.findAllBysql(map);
		JsonModel jm=new JsonModel();
		if(list!=null && list.size()>0){
			jm.setCode(1);
			jm.setRows(list);
		}else{
			jm.setCode(0);
			jm.setMsg("查询失败");
		}
		return jm;
	}
	
	

	@RequestMapping("/checkTransferStatus.action")
	@ResponseBody
	public JsonModel checkTransferStatus(Major_change major_change,HttpServletRequest request){
		int check_status=Integer.parseInt(request.getParameter("check_status"));
		
		major_change.setStatus("正常");
		String check_reason=major_change.getCheck_reason();
		Employee employee=new Employee();
		employee.setDepartment_name(request.getParameter("new_department_name"));
		employee.setHuman_major_kind_name(major_change.getNew_major_kind_name());
		employee.setHuman_major_name(major_change.getNew_major_name());
		employee.setSalary_standard_name(major_change.getSalary_standard_name());
		employee.setHuman_id(major_change.getHuman_id());
		employee.setHuman_file_status("正常");
		
		JsonModel json=new JsonModel();
		
			if(check_status==1){
				if(check_reason!=null && !check_reason.equals("")){
					boolean bl=major_changeBiz.updateMajor_change(major_change, employee);
					if(bl==true){
						json.setCode(1);
						json.setMsg("审核通过");
					}else{
						json.setCode(0);
						json.setMsg("操作失败"+"审核通过");
					}
				}else{
					json.setCode(0);
					json.setMsg("审核意见不能为空,请重新输入!");
				}
			}else{
				boolean b2=major_changeBiz.deleteMajor_change(major_change.getHuman_id(),employee);
				if(b2==true){
					json.setCode(1);
					json.setMsg("操作成功,审核未通过");
				}else{
					json.setCode(0);
					json.setMsg("操作失败");
				}
			}
		
		return json;
		
	}
	

	
}
