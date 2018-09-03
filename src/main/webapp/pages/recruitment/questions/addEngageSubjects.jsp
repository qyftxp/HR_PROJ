<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../header.jsp"%>

<div class="easyui-panel" title="试题登记" style="height:100%">
	<form id="add" method="post">
		<table cellpadding="10" cellspacing="60" style="border-collapse:separate; border-spacing:50px 0px;">
			<tr>
				<td>试题I级分类：
					<select class="first_kind_nameList" name="first_kind_nameList">
						<c:forEach items="${first_kind_nameList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>
				<td>试题II级分类：
					<select class="second_kind_nameList" name="second_kind_nameList">
						<c:forEach items="${second_kind_nameList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>
				<td>试题出处：
					<input class="easyui-textbox" type="text" name="message" data-options="required:true"></input>
				</td>			
			</tr>	
			<tr>
				<td>正确答案：
					<input class="easyui-textbox" type="text" name="answer" data-options="required:true"></input>
				</td>
				<td>登记人：
					<input class="easyui-textbox" type="text" name="name" data-options="required:true"></input>
				</td>
				<td>登记时间：
					<input name="startTime" id="startTime" type="text" class="easyui-datebox" editable="fasle" />
				</td>
			</tr>   								
		</table><br>
		<div style="margin-left: 60px;">
			<div>
				题干：&nbsp;<input class="easyui-textbox" name="message"
					data-options="multiline:true" style="height: 60px; width: 700px"></input>
			</div>
			<br>
			<div>

				答案a：<input class="easyui-textbox" name="message" data-options="multiline:true" style="height: 40px; width: 700px"></input>
			</div>
			<br>
			<div>
				答案b：<input class="easyui-textbox" name="message" data-options="multiline:true" style="height: 40px; width: 700px"></input>
			</div>
			<br>
			<div>
				答案c：<input class="easyui-textbox" name="message" data-options="multiline:true" style="height: 40px; width: 700px"></input>
			</div>
			<br>
			<div>
				答案d：<input class="easyui-textbox" name="message" data-options="multiline:true" style="height: 40px; width: 700px"></input>
			</div>
			<br>
		</div>
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