<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<script type="text/javascript">

function onchangeMajorKind(obj){
	/* alert("123"); */
	var major_kind_id=obj;
	$.ajax({
		url:"MajorKind_list.action",
		type:"post",
		data:"major_kind_id="+major_kind_id,
		dateType:"json",
		success:function(data){
			var str="";
			var length=data.rows.length;
			for(var i=0;i<length;i++){
				var major = data.rows[i];
				str +='<option value="'+major.major_id+'">'+major.major_name+'</option>';
				
			}
			/* alert(str); */
			$("#Major").html(str);
		}
	});
}

</script>


<body class="easyui-layout">
	
	<div class="easyui-panel" title="调动登记" style="height: 100%">
		<div style="margin:0 0 0 700px">
				<a href="#"  class="easyui-linkbutton" data-options="iconCls:'icon-add'">Add</a>
				<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">Remove</a>
				<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">Save</a>
				<a href="/pages/transfer/find.jsp" class="easyui-linkbutton" data-options="iconCls:'icon-return'">Return</a>
		</div>
		
		<div style="padding:10px 60px 20px 60px">
		    <form id="ff" method="post">
		    	<table CELLPADDING="5" CELLSPACING="50" style="border-collapse:separate; border-spacing:50px 0px;">
		    		<tr>
		    			<td>档案编号:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    			
		    				<input class="easyui-textbox" type="text" name="name" data-options="required:true"></input>
		    			</td>
		    			
		    			<td>部门:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    				<input class="easyui-textbox" type="text" name="email" data-options="required:true,validType:'email'"></input>
		    			</td>
		    			
		    		</tr>
		    		
		    		<tr>
		    			<td>姓名:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    				<input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input>
		    			</td>
		    			
		    			<td>原职位分类:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    				<input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px"></input>
		    			</td>
		    			
		    		</tr>
		    		
		    		<tr>
		    			<td>原职位名称:</td>
		    			<td>
		    				<input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px"></input>
		    			</td>
		    		</tr>
		    		<tr>
		    			<td>原薪酬标准:</td>
		    			<td><input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px"></input></td>
		    		</tr>
		    		<tr>
		    			<td>新部门:&nbsp;&nbsp;&nbsp;&nbsp;
		    			 <select id="department" class="easyui-combobox" name="department_nameList" style="width: 100px;" editable="false">
								<c:forEach items="${department_nameList}" var="list">
									<option value="${list.department_name}">${list.department_name}</option>
								</c:forEach>
							</select>
						</td>
		    		</tr>
		    		<tr>
		    			<td>新职位分类:&nbsp;&nbsp;&nbsp;&nbsp;
		    			 <select  class="human_major_kind_nameList" name="human_major_kind_nameList" style="width: 100px;" editable="false"
		    			 	onchange="onchangeMajorKind(this.value)">
								<c:forEach items="${human_major_kind_nameList}" var="major_kind_list">
									<option value="${major_kind_list.major_kind_id}">${major_kind_list.major_kind_name}</option>
								</c:forEach>
							</select>
						</td>
		    		</tr>
		    		<tr>
		    			<td>新职位名称:&nbsp;&nbsp;&nbsp;&nbsp;
			    			 <select  name="kk" id="Major">
		    				
		    				</select>
						</td>
		    		</tr>
		    		<tr>
		    			<td>新薪酬标准:&nbsp;&nbsp;&nbsp;&nbsp;
		    			 <select id="salaryStandar" class="easyui-combobox" name="salary_standardList" style="width: 100px;" editable="false">
								<c:forEach items="${salary_standardList}" var="standardlist">
									<option value="${standardlist.standard_name}">${standardlist.standard_name}</option>
								</c:forEach>
							</select>
						</td>
		    		</tr>
		    		<tr>
		    			<td>登记人:</td>
		    			<td><input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px"></input></td>
		    		</tr>
		    		<tr>
		    			<td>登记时间:</td>
		    			<td><input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px"></input></td>
		    		</tr>
		    		<tr>
		    			<td>调动原因:</td>
		    			<td><input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px"></input></td>
		    		</tr>
		    	</table>
		    </form>
	    <div style="text-align:center;padding:5px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">Submit</a>
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">Clear</a>
	    </div>
	    </div>
	</div>
	<script>
		function submitForm(){
			$('#ff').form('submit');
		}
		function clearForm(){
			$('#ff').form('clear');
		}
	</script>
		
	</div>
</body>
</html>