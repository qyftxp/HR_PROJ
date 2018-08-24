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
	    				部门:<select class="department_nameList" name="department_nameList">
	    						<c:forEach items="${department_nameList}" var="list">
	    							<option value=${list.department_name}>${list.department_name}</option>
	    						</c:forEach>
	    				
	    				</select>
	    			</td>
	    			<td>
	    				职位分类:<select class="human_major_kind_nameList" name="human_major_kind_nameList" onchange="onchangeMajorKind(this.value)">
	    				
	    						<c:forEach items="${human_major_kind_nameList}" var="list">
	    							<option value=${list.major_kind_id}>${list.major_kind_name}</option>
	    						</c:forEach>
	    				
	    					
	    				</select>
	    				
	    			</td>
	    			
	    			<td>
	    				<strong>职位:</strong>
	    				<select  name="kk" id="Major">
	    				
	    				</select>
	    			</td>
	    		
	    		</tr>
	    		
	    		<tr>
	    			
	    			<td>姓名:<input class="easyui-textbox" type="text" name="name" data-options="required:true"></input></td>
	    			
	    			<td>
	    				性别<select class="human_sexList" name="human_sexList">
	    						<c:forEach items="${human_sexList}" var="list">
	    							<option value=${list.attribute_name}>${list.attribute_name}</option>
	    						</c:forEach>
	    				</select>
	    			</td>
	    			
	    			<td>Email:<input class="easyui-textbox" type="text" name="email" data-options="required:true,validType:'email'"></input></td>
	    		</tr>
	    		
	    		
	    		<tr>
	    			<td>电话:<input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input></td>
	    			
	    			<td>QQ:<input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input></td>
	    		
	    			<td>住址:<input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input></td>
	    		</tr>
	    	
	    		
	    		<tr>
	    			<td>邮编:<input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input></td>
	    			
	    			<td>
	    				国籍:<select class="human_nationality" name="human_nationality">
	    						<c:forEach items="${human_nationalityList}" var="list">
	    							<option value=${list.attribute_name}>${list.attribute_name}</option>
	    						</c:forEach>
	    						
	    				</select>
	    			</td>
	    			
	    			<td>出生地:<input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input></td>
	    			
	    		</tr>
	    		
	    		
	    		<tr>
	    			<td>生日:<input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input></td>
	    			
	    			<td>
	    				民族:<select class="human_raceList" name="human_raceList">
	    						<c:forEach items="${human_raceList}" var="list">
	    							<option value=${list.attribute_name}>${list.attribute_name}</option>
	    						</c:forEach>
	    				</select>
	    			</td>
	    			
	    			<td>
	    				政治面貌:<select class="human_partyList" name="human_partyList">
		    						<c:forEach items="${human_partyList}" var="list">
		    							<option value=${list.attribute_name}>${list.attribute_name}</option>
		    						</c:forEach>
	    						</select>
	    			</td>
	    		</tr>
	    		
	    		
	    		<tr>
	    		
	    			<td>
	    				学历:<select class="human_educated_degreeList" name="human_educated_degreeList">
	    							<c:forEach items="${human_educated_degreeList}" var="list">
		    							<option value=${list.attribute_name}>${list.attribute_name}</option>
		    						</c:forEach>
	    				
	    					</select>
	    			</td>
	    			
	    			
	    		    <td>年龄:<input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input></td>
	    			
	    			<td>身份证号码:<input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input></td>
	    		</tr>
	    		
	    	
	    		<tr>
	    			<td>
	    				教育年限:<select class="human_educated_yearsList" name="human_educated_yearsList">
	    							<c:forEach items="${human_educated_yearsList}" var="list">
		    							<option value=${list.attribute_name}>${list.attribute_name}</option>
		    						</c:forEach>
	    				
	    				</select>
	    			</td>
	    			
	    			<td>
	    				专业:<select class="human_educated_majorList" name="human_educated_majorList">
	    						<c:forEach items="${human_educated_majorList}" var="list">
		    							<option value=${list.attribute_name}>${list.attribute_name}</option>
		    						</c:forEach>
	    				</select>
	    			</td>
	    			
	    			<td>
	    				薪酬标准:<select class="easyui-combobox" name="salary_standardList">
	    							<c:forEach items="${salary_standardList}" var="list">
		    							<option value=${list.standard_name}>${list.standard_name}</option>
		    						</c:forEach>
	    						</select>
	    			</td>
	    		</tr>
	    		
	    		
	    		
	    		<tr>
	    			<td>开户银行:<input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input></td>
	    			
	    			<td>账号:<input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input></td>
	    			
	    			<td>登记人:<input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input></td>
	    			
	    		</tr>
	    		
	    		<tr>
	    			<td>建档时间:<input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input></td>
	    			
	    			<td>
	    				特长:<select class="human_specialityList" name="human_specialityList">
	    						<c:forEach items="${human_specialityList}" var="list">
		    							<option value=${list.attribute_name}>${list.attribute_name}</option>
		    						</c:forEach>
	    				</select>
	    			</td>
	    			
	    			<td>
	    				爱好:<select class="human_hobbyList" name="human_hobbyList">
	    						<c:forEach items="${human_hobbyList}" var="list">
		    							<option value=${list.attribute_name}>${list.attribute_name}</option>
		    						</c:forEach>
	    				</select>
	    			</td>
	    		</tr>
	    		
	    	</table>
	    	<table CELLPADDING="5" CELLSPACING="50">
	    		<tr>
	    			<td>家庭关系信息:<input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px;width:600px"></input></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注:<input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px;width:600px"></input></td>
	    		</tr>
	    	</table>
	    </form>
	    
	    </div>
	</div>

</body>
</html>

<%@ include file="../bottom.jsp"%>