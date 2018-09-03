<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../header.jsp"%>

<div class="easyui-panel" title="考试答题" style="height:100%">
	<form id="add" method="post">
		<table cellpadding="10" cellspacing="60" style="border-collapse:separate; border-spacing:50px 0px;">
			<tr>
				<td>试卷编号：
					<input class="easyui-textbox" type="text" name="exam_number" data-options="required:true"></input>
				</td>
				<td>试题数量：
					<input class="easyui-textbox" type="text" name="number" data-options="required:true"></input>
				</td>
				<td>姓名：
					<input class="easyui-textbox" type="text" name="human_name" data-options="required:true"></input>
				</td>			
			</tr>	
			<tr>
				<td>身份证号：
					<input class="easyui-textbox" type="text" name="human_idcard" data-options="required:true"></input>
				</td>
				<td>答题限定时间：
					<input class="easyui-textbox" type="text" name="limite_time" data-options="required:true"></input>
				</td>
				<td>答题已用时间：
					<input name="use_time" id="use_time" type="text" class="easyui-datebox" editable="fasle" />
				</td>
			</tr>   								
		</table><br>
		<hr>
		<div style="margin-left: 60px;">
			<div>
				题干：&nbsp;<input class="easyui-textbox" name="message"
					data-options="multiline:true" style="height: 60px; width: 700px"></input>
			</div>
			<br />
			<div>
				<input id="answer" type="checkbox">
					A：<input class="easyui-textbox" data-options="multiline:true" style="height: 40px; width: 700px"></input>
				</input><br/><br/>
				<input id="answer" type="checkbox">
					B：<input class="easyui-textbox" data-options="multiline:true" style="height: 40px; width: 700px"></input>
				</input><br/><br/>
				<input id="answer" type="checkbox">
					C：<input class="easyui-textbox" data-options="multiline:true" style="height: 40px; width: 700px"></input>
				</input><br/><br/>
				<input id="answer" type="checkbox">
					D：<input class="easyui-textbox" data-options="multiline:true" style="height: 40px; width: 700px"></input>
				</input>
			</div><br/>			
		</div>
	</form>
	<div style="text-align: center; padding: 10px">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">交卷</a>&nbsp;&nbsp;&nbsp;
	</div>
</div>

<script>
	function submitForm() {
		$('#add').form('submit');
	}
</script>

<%@ include file="../../bottom.jsp"%>
