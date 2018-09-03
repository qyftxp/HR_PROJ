<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../header.jsp"%>
	<script type="text/javascript">

		function onchangeMajorKind(obj){
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
					$("#Major").html(str);
				}
			});
		}

</script>
			
	
<body class="easyui-layout">
	<div class="easyui-panel" title="档案登记" style="height:100%">
		<div>
	    <form id="ff" method="post">
	    	<table CELLPADDING="5" CELLSPACING="50" style="border-collapse:separate; border-spacing:50px 0px;">
	    		<tr>
	    			<td>
	    				部门:<select class="department_nameList" name="department_name">
	    						<c:forEach items="${department_nameList}" var="list">
	    							<option value="${list.department_name}">${list.department_name}</option>
	    						</c:forEach>
	    				
	    				</select>
	    			</td>
	    			<td>
	    				职位分类:<select class="human_major_kind_nameList" name="human_major_kind_name" onchange="onchangeMajorKind(this.value)">
	    				
	    						<c:forEach items="${human_major_kind_nameList}" var="list">
	    							<option value="${list.major_kind_id}">${list.major_kind_name}</option>
	    						</c:forEach>
	    				
	    					
	    				</select>
	    				
	    			</td>
	    			
	    			<td>
	    				<strong>职位:</strong>
	    				<select  name="human_major_name" id="Major">
	    				
	    				</select>
	    			</td>
	    		
	    		</tr>
	    		
	    		<tr>
	    			
	    			<td>姓名:<input class="easyui-textbox" type="text" name="human_name" value="李超" data-options="required:true"></input></td>
	    			
	    			<td>
	    				性别<select class="human_sex" name="human_sex">
	    						<c:forEach items="${human_sexList}" var="list">
	    							<option value="${list.attribute_name}">${list.attribute_name}</option>
	    						</c:forEach>
	    				</select>
	    			</td>
	    			
	    			<td>Email:<input class="easyui-textbox" type="text" name="human_email" value="1278354705@qq.com" data-options="required:true,validType:'email'"></input></td>
	    		</tr>
	    		
	    		
	    		<tr>
	    			<td>电话:<input class="easyui-textbox" type="text" name="human_mobilephone" value="18373473175" data-options="required:true"></input></td>
	    			
	    			<td>QQ:<input class="easyui-textbox" type="text" name="human_qq" value="1278354705" data-options="required:true"></input></td>
	    		
	    			<td>住址:<input class="easyui-textbox" type="text" name="human_address" value="长沙" data-options="required:true"></input></td>
	    		</tr>
	    	
	    		
	    		<tr>
	    			<td>邮编:<input class="easyui-textbox" type="text" name="human_postcode" value="425300" data-options="required:true"></input></td>
	    			
	    			<td>
	    				国籍:<select class="human_nationality" name="human_nationality">
	    						<c:forEach items="${human_nationalityList}" var="list">
	    							<option value="${list.attribute_name}">${list.attribute_name}</option>
	    						</c:forEach>
	    						
	    				</select>
	    			</td>
	    			
	    			<td>出生地:<input class="easyui-textbox" type="text" name="human_birthplace" value="广东" data-options="required:true"></input></td>
	    			
	    		</tr>
	    		
	    		
	    		<tr>
	    			<td>生日:<input class="easyui-textbox" type="text" name="human_birthday" value="1996-03-29" data-options="required:true"></input></td>
	    			
	    			<td>
	    				民族:<select class="human_raceList" name="human_race">
	    						<c:forEach items="${human_raceList}" var="list">
	    							<option value="${list.attribute_name}">${list.attribute_name}</option>
	    						</c:forEach>
	    				</select>
	    			</td>
	    			
	    			<td>
	    				政治面貌:<select class="human_partyList" name="human_party">
		    						<c:forEach items="${human_partyList}" var="list">
		    							<option value="${list.attribute_name}">${list.attribute_name}</option>
		    						</c:forEach>
	    						</select>
	    			</td>
	    		</tr>
	    		
	    		
	    		<tr>
	    		
	    			<td>
	    				学历:<select class="human_educated_degreeList" name="human_educated_degree">
	    							<c:forEach items="${human_educated_degreeList}" var="list">
		    							<option value="${list.attribute_name}">${list.attribute_name}</option>
		    						</c:forEach>
	    				
	    					</select>
	    			</td>
	    			
	    			
	    		    <td>年龄:<input class="easyui-textbox" type="text" name="human_age" value="22" data-options="required:true"></input></td>
	    			
	    			<td>身份证号码:<input class="easyui-textbox" type="text" name="human_id_card" value="5412121245456666" data-options="required:true"></input></td>
	    		</tr>
	    		
	    	
	    		<tr>
	    			<td>
	    				教育年限:<select class="human_educated_yearsList" name="human_educated_years">
	    							<c:forEach items="${human_educated_yearsList}" var="list">
		    							<option value="${list.attribute_name}">${list.attribute_name}</option>
		    						</c:forEach>
	    				
	    				</select>
	    			</td>
	    			
	    			<td>
	    				专业:<select class="human_educated_majorList" name="human_educated_major">
	    						<c:forEach items="${human_educated_majorList}" var="list">
		    							<option value="${list.attribute_name}">${list.attribute_name}</option>
		    						</c:forEach>
	    				</select>
	    			</td>
	    			
	    			<td>
	    				薪酬标准:<select class="easyui-combobox" name="salary_standard_name">
	    							<c:forEach items="${salary_standardList}" var="list">
		    							<option value="${list.standard_name}">${list.standard_name}</option>
		    						</c:forEach>
	    						</select>
	    			</td>
	    		</tr>
	    		
	    		
	    		
	    		<tr>
	    			<td>开户银行:<input class="easyui-textbox" type="text" name="human_bank" value="建设" data-options="required:true"></input></td>
	    			
	    			<td>账号:<input class="easyui-textbox" type="text" name="human_account" value="12112666666" data-options="required:true"></input></td>
	    			
	    			<td>登记人:<input class="easyui-textbox" type="text" name="register" value="张三" data-options="required:true"></input></td>
	    			
	    		</tr>
	    		
	    		<tr>
	    			<td>建档时间:<input class="easyui-textbox" type="text" name="regist_time" value="2018-9-10" data-options="required:true"></input></td>
	    			
	    			<td>
	    				特长:<select class="human_specialityList" name="human_speciality">
	    						<c:forEach items="${human_specialityList}" var="list">
		    							<option value="${list.attribute_name}">${list.attribute_name}</option>
		    						</c:forEach>
	    				</select>
	    			</td>
	    			
	    			<td>
	    				爱好:<select class="human_hobbyList" name="human_hobby">
	    						<c:forEach items="${human_hobbyList}" var="list">
		    							<option value="${list.attribute_name}">${list.attribute_name}</option>
		    						</c:forEach>
	    				</select>
	    			</td>
	    		</tr>
	    		
	    	</table>
	    	<table CELLPADDING="5" CELLSPACING="50">
	    		<tr>
	    			<td>家庭关系信息:<input class="easyui-textbox" name="human_family_membership" value="好" data-options="multiline:true" style="height:60px;width:600px"></input></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注:<input class="easyui-textbox" name="remark" value="此人非常优秀" data-options="multiline:true" style="height:60px;width:600px"></input></td>
	    		</tr>
	    	</table>
	    </form>
	    
	    <div style="text-align:center;padding:5px">
	    	<a href="javascript:void(0)" type="button" onclick="submitForm()">提交</a>
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">取消</a>
	    </div>

	    </div>
	</div>
	
	<script>
		function submitForm(){
			$.ajax({
				url:"employee.action",
				type:"POST",
				data:$("#ff").serialize(),//序列化form
				dataType:'json',
				success:function(data){
					if(data.code==1){
						alert('提交成功');
					}else{
						alert('提交失败');
					}
				}
			});
		}
		function clearForm(){
			$('#ff').form('clear');
		}
	</script>
	

</body>
</html>

<%@ include file="../bottom.jsp"%>