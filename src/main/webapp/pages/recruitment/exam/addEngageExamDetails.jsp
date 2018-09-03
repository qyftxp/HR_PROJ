<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../header.jsp"%>

<div class="easyui-panel" title="考试出题" style="height:100%">
	<form id="add" method="post">
		<table cellpadding="5" cellspacing="50" style="border-collapse:separate; border-spacing:30px 0px;">
			<tr>
				<td>试卷编号：
					<input class="easyui-textbox" type="text" name="exam_number" data-options="required:true"></input>
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
				<td>试题I级分类：
					<select class="first_kind_nameList" name="first_kind_nameList">
						<c:forEach items="${first_kind_nameList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>			
			</tr>
			<tr>
				<td>套题数量：
					<input class="easyui-textbox" type="text" name="number" data-options="required:true"></input>
				</td>
				<td>可用题数：
					<input class="easyui-textbox" type="text" name="number" data-options="required:true"></input>
				</td>
				<td>出题数量：
					<input class="easyui-textbox" type="text" name="number" data-options="required:true"></input>
				</td>
				<td>试题II级分类：
					<select class="second_kind_nameList" name="second_kind_nameList">
						<c:forEach items="${second_kind_nameList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
	    		<td>登记人：&nbsp;
					<input class="easyui-textbox" type="text" name="register" data-options="required:true"></input>
				</td>
				<td>登记时间：
					<input name="regist_time" id="regist_time" type="text" class="easyui-datebox" data-options="required:true" editable="fasle" />
				</td>
				<td>答题时限：
					<input class="easyui-textbox" type="text" name="limite_time" data-options="required:true"></input>
				</td>
	    	</tr>
		</table>
	</form>
	<div style="text-align: center; padding: 10px">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">出题</a>&nbsp;&nbsp;&nbsp;
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
