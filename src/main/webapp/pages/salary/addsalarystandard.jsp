<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div id="dlg" class="easyui-dialog" style="width: 400px; height: 400px;" data-options="iconCls:'icon-save',resizable:true,modal:true" closed='true' buttons="#dlg-buttons">
	<form id="fm" method="post" novalidate>
		<div>
			<label>薪酬标准单编号  ：</label> 
			<input id="standard_id" name="standard_id" class="easy-textbox" required="true">		
		</div><br/>
		<div>
			<label>薪酬标准单名称：</label> 
			<input id="standard_name" name="standard_name" class="easy-textbox" required="true">
		</div><br/>
		<div>
			<label>制定者：</label> 
			<input id="designer" name="designer" class="easy-textbox" required="true">			
		</div><br/>
		<div>
			<label>登记人：</label> 
			<input id="register" name="register" class="easy-textbox" required="true">
		</div><br/>
		<div>
			<label>复核人：</label> 
			<input id="checker" name="checker" class="easy-textbox" required="true">	
		</div><br/>
		<div>
			<label>变更人：</label> 
			<input id="changer" name="changer" class="easy-textbox" required="true">
		</div><br/>
		<div>
			<label>登记时间：</label> 
			<input name="regist_time" id="regist_time" type="text" class="easyui-datebox" data-options="required:true" editable="fasle" />			
		</div><br/>
		<div>
			<label>复核时间：</label> 
			<input name="check_time" id="check_time" type="text" class="easyui-datebox" data-options="required:true" editable="fasle" />
		</div><br/>
		<div>
			<label>变更时间：</label> 
			<input name="change_time" id="change_time" type="text" class="easyui-datebox" data-options="required:true" editable="fasle" />			
		</div><br/>
		<div>
			<label>薪酬总额：</label> 
			<input id="salary_sum" name="salary_sum" class="easy-textbox" required="true">
		</div><br/>
		<div>
			<label>复核状态：</label>
			<input id="check_status" name="check_status" class="easy-textbox" required="true">		
		</div><br/>
		<div>
			<label>更改状态 ：</label>
			<input id="change_status" name="change_status" class="easy-textbox" required="true">
		</div><br/>
		<div>
			<label>复核意见：</label>
			<input id="check_comment" name="check_comment" class="easy-textbox" required="true">			
		</div><br/>
		<div>
			<label>备注 ：</label>
			<input id="remark" name="remark" class="easy-textbox" required="true">
		</div>
	</form>
</div>

<div id="dlg-buttons">
	<a href="javascript:void(0)" id="saveResfood" class="easyui-linkbutton c6" iconCls="icon-ok" onClick="" style="width: 90px">Save</a> 
	<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onClick="javascript:$('#dlg').dialog('close')" style="width: 90px">Cancel</a>
</div>

<%@ include file="../bottom.jsp"%>