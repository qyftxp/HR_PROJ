<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../header.jsp"%>

<div class="easyui-panel" title="简历登记" style="height:100%">
	<form id="add" method="post">
		<table cellpadding="5" cellspacing="30" style="border-collapse:separate; border-spacing:20px 0px;">
			<tr>				
				<td>职位分类：
					<select class="major_kind_nameList" name="major_kind_nameList">
						<c:forEach items="${major_kind_nameList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>
				<td>职位名称：
					<select class="major_nameList" name="major_nameList">
						<c:forEach items="${major_nameList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>
				<td>招聘类型：
					<select class="engage_typeList" name="engage_typeList">
						<c:forEach items="${engage_typeList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>				
			</tr>
			<tr>
				<td>姓名：&nbsp;&nbsp;
					<input class="easyui-textbox" type="text" name="name" data-options="required:true"></input>
				</td>
				<td>年龄：
					<input class="easyui-textbox" type="text" name="age" data-options="required:true"></input>
				</td>
				<td>身份证号：
					<input class="easyui-textbox" type="text" name="num" data-options="required:true"></input>
				</td>						
			</tr>
			<tr>
				<td>地址：&nbsp;&nbsp;
					<input class="easyui-textbox" type="text" name="address" data-options="required:true"></input>
				</td>
				<td>邮编：
					<input class="easyui-textbox" type="text" name="number" data-options="required:true"></input>
				</td>
				<td>电话号码：
					<input class="easyui-textbox" type="text" name="number" data-options="required:true"></input>
				</td>			
			</tr>
			<tr>						
				<td>Email：
					<input class="easyui-textbox" type="text" name="email" data-options="required:true"></input>
				</td>		
				<td>特长：&nbsp;
					<select class="human_specialityList" name="human_specialityList">
						<c:forEach items="${human_specialityList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>	
				<td>兴趣爱好：
					<select class="human_hobbyList" name="human_hobbyList">
						<c:forEach items="${human_hobbyList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>							
			</tr>
			<tr>
				<td>性别：
					<select class="human_sexList" name="human_sexList">
						<c:forEach items="${human_sexList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>
				<td>民族：
					<select class="human_raceList" name="human_raceList">
						<c:forEach items="${human_raceList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>
				<td>政治面貌：
					<select class="human_partyList" name="human_partyList">
						<c:forEach items="${human_partyList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>					
			</tr>
			<tr>
				<td>学历：
					<select class="human_educated_degreeList" name="human_educated_degreeList">
						<c:forEach items="${human_educated_degreeList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>
				<td>专业：
					<select class="human_educated_majorList" name="human_educated_majorList">
						<c:forEach items="${human_educated_majorList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>
				<td>毕业院校：
					<input class="easyui-textbox" type="text" name="college" data-options="required:true"></input>
				</td>					
			</tr>
			<tr>	    		
				<td>薪酬要求：
					<input class="easyui-textbox" type="text" name="num" data-options="required:true"></input>
				</td>	
				<td>个人履历：
	    			<input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px;width:200px"></input>
	    		</td>
	    		<td>备注：
	    			<input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px;width:200px"></input>
	    		</td>
	    	</tr>
		</table>
	</form>
	<div style="text-align: center; padding: 10px">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">登记</a>&nbsp;&nbsp;&nbsp;
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">清除</a>
	</div>
</div>

<script>
	function submitForm() {
		$('#add').form('submit');
	}
	function clearForm() {
		$('#add').form('clear');
	}
</script>

<%@ include file="../../bottom.jsp"%>