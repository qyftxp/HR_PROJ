<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../header.jsp"%>

<div class="easyui-panel" title="职位发布变更" style="height:100%">
	<form id="update" method="post">

		<table cellpadding="5" cellspacing="50" style="border-collapse:separate; border-spacing:30px 0px;">
			<tr>
				<td>部门类型：
					<select class="department_nameList" name="department_nameList">
						<c:forEach items="${department_nameList}" var="list">
							<option value="${list.department_name}">${list.department_name}</option>
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
			</tr>
			<tr>
				<td>招聘人数：
					<input class="easyui-textbox" type="text" name="number" data-options="required:true"></input>
				</td>
				<td>变更人：&nbsp;
					<input class="easyui-textbox" type="text" name="name" data-options="required:true"></input>
				</td>
				<td>变更时间：
					<input name="startTime" id="startTime" type="text" class="easyui-datebox" data-options="required:true" editable="fasle" />
				</td>
			</tr>
			<tr>
	    		<td>职位描述：
	    			<input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px;width:200px"></input>
	    		</td>
	    		<td>招聘要求：
	    			<input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px;width:200px"></input>
	    		</td>
	    		<td>截止日期：
					<input name="endTime" id="endTime" type="text" class="easyui-datebox" editable="fasle" data-options="required:true" />
				</td>
	    	</tr>
		</table>
	</form>
	<div style="text-align: center; padding: 10px">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">变更</a>&nbsp;&nbsp;&nbsp;
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">清除</a>
	</div>
</div>

<script>
	function submitForm() {
		$('#update').form('submit');
	}
	function clearForm() {
		$('#update').form('clear');
	}
</script>

<%@ include file="../../bottom.jsp"%>