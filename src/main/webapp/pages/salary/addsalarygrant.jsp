<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div id="dlg" class="easyui-dialog" style="width: 400px; height: 400px;" data-options="iconCls:'icon-save',resizable:true,modal:true" closed='true' buttons="#dlg-buttons">
	<form id="fm" method="post" novalidate>
		<div>
			<label>薪酬发放号：</label> 
			<input id="salary_grant_id" name="salary_grant_id" class="easy-textbox" required="true">
		</div>
		<div>
			<label>部门名称：</label> 
			<input id="department_name" name="department_name" class="easy-textbox" required="true">
		</div>
		<div>
			<label>总人数：</label> 
			<input id="human_amount" name="human_amount" class="easy-textbox" required="true">
		</div>
		<div>
			<label>薪酬总额：</label> 
			<input id="salary_sum" name="salary_sum" class="easy-textbox" required="true">
		</div>
		<div>
			<label>实发总额：</label>
			<input id="salary_paid_sum" name="salary_paid_sum" class="easy-textbox" required="true">
		</div>
		<div>
			<label>登记人：</label> 
			<input id="register" name="register" class="easy-textbox" required="true">
		</div>
		<div>
			<label>登记时间：</label> 
			<input name="regist_time" id="regist_time" type="text" class="easyui-datebox" data-options="required:true" editable="fasle" />
		</div>
		<div>
			<label>复核人：</label> 
			<input id="checker" name="checker" class="easy-textbox" required="true">
		</div>
		<div>
			<label>复核时间：</label> 
			<input name="check_time" id="check_time" type="text" class="easyui-datebox" data-options="required:true" editable="fasle" />
		</div>
		<div>
			<label>复核状态：</label>
			<input id="check_status" name="check_status" class="easy-textbox" required="true">
		</div>
		
	</form>
</div>

<div id="dlg-buttons">
	<a href="javascript:void(0)" id="saveResfood" class="easyui-linkbutton c6" iconCls="icon-ok" onClick="" style="width: 90px">Save</a> 
	<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onClick="javascript:$('#dlg').dialog('close')" style="width: 90px">Cancel</a>
</div>

<%@ include file="../bottom.jsp"%>