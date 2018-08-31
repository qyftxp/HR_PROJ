<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	function goBack(){
	    window.history.go(-1)
	}
</script>


 
<script type="text/javascript">

	function add() {
		alert("123");
/* 		var button = this;
		$(button).linkbutton('disable'); */
	    $.ajax({
			url :'major_changeRegister.action',
			method : 'POST',
			data : $("#add_transfer").serialize(), 
			success : function(data) {
				if(data.code==1){
					alert("调动登记提交成功,等待审核");
					//$(button).linkbutton('enable');
			        $('#btnExport').linkbutton('disable');
				}else{
					alert("调动登记失败!请检查信息是否正确!"+data.msg);
				}
			}
		});
	}




function onchangeMajorKind(obj){
	//alert(${list.human_id});
	/* alert("123"); */
	
	
	$.ajax({
		url:"MajorKindName_list.action",
		type:"post",
		data:"major_kind_name="+obj,
		dateType:"json",
		success:function(data){
			 var str="";
			var length=data.rows.length;
			for(var i=0;i<length;i++){
				var major = data.rows[i];
				str +='<option value="'+major.major_name+'">'+major.major_name+'</option>';
				
			} 
			 /* alert(str);  */
			$("#Major").html(str); 
		}
	});
	
	
}

</script>


<body class="easyui-layout">
		
	<div class="easyui-panel" title="调动登记" style="height: 100%">
		<div style="margin:0 0 0 500px">
			<!-- 	<a href="#"  class="easyui-linkbutton" data-options="iconCls:'icon-add'">Add</a>
				<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">Remove</a>
				<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">Save</a>
				<a href="/pages/transfer/find.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-return'">Return</a> -->
		</div>
		
		<div style="padding:10px 60px 20px 60px">
		    <form id="add_transfer" method="post" action="add">
		   	
		    	<table CELLPADDING="5" CELLSPACING="30" style="border-collapse:separate; border-spacing:50px 0px;">
		    			<c:forEach items="${jm}" var="emp">
							 <input id="huf_id" type="hidden" name="huf_id" value="${emp.huf_id}"/>
							 <input id="status" type="hidden" name="status" value="调动待审核"/>	
		    		<tr>
		    			<td><strong>档案编号:</strong>
		    			
		    				<input class="easyui-textbox" type="text" name="human_id" data-options="required:true" value="${emp.human_id}" readOnly="true"></input>
		    			</td>
		    			
		    			<td><strong>部门:</strong>
		    				<input class="easyui-textbox" type="text" name="department_name" data-options="required:true" value="${emp.department_name}" readOnly="true"></input>
		    			</td>
		    			
		    		</tr>
		    		
		    		<tr>
		    			<td><strong>姓名:</strong>
		    				<input class="easyui-textbox" type="text" name="human_name" data-options="required:true" value="${emp.human_name}" readOnly="true"></input>
		    			</td>
		    			
		    			<td><strong>原职位分类:</strong>
		    				<input class="easyui-textbox" name="major_kind_name" data-options="required:true"   value="${emp.human_major_kind_name}" readOnly="true"></input>
		    			</td>
		    			
		    		</tr>
		    		
		    		<tr>
		    			<td><strong>原职位名称:</strong>
		    				<input class="easyui-textbox" name="major_name" data-options="required:true" value="${emp.human_major_name}" readOnly="true"></input>
		    			</td>
		    			<td><strong>原薪酬标准:</strong>
		    				<input class="easyui-textbox" name="salary_standard_name" data-options="required:true"  value="${emp.salary_standard_name}" readOnly="true"></input>
		    			</td>
		 			</tr>
		    		<tr>
		    			<td><strong>新部门:</strong>
		    			 <select id="department" class="easyui-combobox" name="new_department_name" style="width: 100px;" editable="false">
								<c:forEach items="${department_nameList}" var="list">
									<option value="${list.department_name}">${list.department_name}</option>
								</c:forEach>
							</select>
						</td>
						
						<td><strong>新职位分类:</strong>
		    			 <select  class="human_major_kind_nameList" name="new_major_kind_name" style="width: 100px;" editable="false"
		    			 	onchange="onchangeMajorKind(this.value)">
								<c:forEach items="${human_major_kind_nameList}" var="major_kind_list">
									<option value="${major_kind_list.major_kind_name}" >${major_kind_list.major_kind_name}</option>
								</c:forEach>
							</select>
						</td>
						
		    		</tr>
		    		<tr>
		    			<td><strong>新职位名称:</strong>
			    			 <select  name="new_major_name" id="Major" data-options="required:true">
		    				
		    				</select>
						</td>
						
						<td><strong>新薪酬标准:</strong>
		    			 <select id="salaryStandar" class="easyui-combobox" name="new_salary_standard_name" style="width: 140px;" editable="false">
								<c:forEach items="${salary_standardList}" var="standardlist">
									<option value="${standardlist.standard_name}">${standardlist.standard_name}</option>
								</c:forEach>
							</select>
						</td>
						
		    		</tr>
		    		
		    		<tr>
		    			<td><strong>登记人:</strong>
		    				<input class="easyui-textbox" name="register" data-options="required:true" value="${user.u_name }" readOnly="true"></input>
		    			</td>
		    		
		    			<td><strong>登记时间:</strong>
		    				<input id="register_date" class="easyui-textbox" name="regist_time" data-options="required:true"  value="GetDateStr()" readOnly="true"></input>
		    			</td>	
		    			
		    		</tr>
		    		
		    		<tr>
		    			<td><strong>调动原因:</strong>
		    				<input class="easyui-textbox" name="change_reason" data-options="required:true" style="height:60px;width:400px"></input>
		    			</td>
		    		</tr>
		    		</c:forEach>
		    	</table>
		    </form>
		   
	    <div style="text-align:center;padding:20px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onClick="add()" id="btnExport">提交</a>
	    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="goBack()" >返回</a>
	   
	    </div>
	</div>
	
		
	</div>
	
	<script type="text/javascript">
		function GetDateStr(){
			var dd = new Date();
		    var y = dd.getFullYear();
			var m = dd.getMonth()+1;
			var d = dd.getDate();
			var h = dd.getHours();
		    var mi = dd.getMinutes();
		    var s = dd.getSeconds();
		    return y+"-"+m+"-"+d+" "+h+":"+mi+":"+s;
		}
		document.getElementById("register_date").value=GetDateStr();

</script>
	
</body>
</html>