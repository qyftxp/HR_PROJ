<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div class="easyui-panel" data-options="region:'center'" title="薪酬标准查询" style="height: 70%">
	<form id="fom" action="">
		薪酬单号:<input id="salary_grant_id" name="salary_grant_id" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		发放时间:<input name="startTime" id="startTime" type="text" class="easyui-datebox" editable="fasle" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" onclick="find()" value="查询" />
	</form>
	<br />
	<table id="dg" title="薪酬发放信息" style="width: 690px; height: 200px; align: center"
		data-options="rownumbers:true,singleSelect:true,pagination:true,url:'datagrid_data1.json',method:'get'">
		<thead>
			<tr>
				<th data-options="field:'standard_id',width:70,align:'center'">薪酬单号</th>
				<th data-options="field:'times',width:70,align:'center'">薪酬次数</th>
				<th data-options="field:'department_name',width:70,align:'center'">部门名称</th>
				<th data-options="field:'human_amount',width:70,align:'center'">总人数</th>
				<th data-options="field:'salary_sum',width:70,align:'center'">薪酬总额</th>
				<th data-options="field:'salary_paid_sum',width:70,align:'center'">实发总额</th>
				<th data-options="field:'register',width:70,align:'center'">登记人</th>
				<th data-options="field:'regist_time',width:70,align:'center'">登记时间</th>
				<th data-options="field:'salary_grant_time',width:100,align:'center'">上次发薪时间</th>				
			</tr>
		</thead>
	</table>
	<br />
	<table id="std" title="薪酬发放详细信息" style="width: 1160px; height: 200px; align: center"
		data-options="rownumbers:true,singleSelect:true,pagination:true,url:'datagrid_data1.json',method:'get'">
		<thead>
			<tr>
				<th data-options="field:'id',width:70,align:'center'">档案编号</th>
				<th data-options="field:'salary_standard_id',width:100,align:'center'">薪酬标准单号</th>				
				<th data-options="field:'human_name',width:50,align:'center'">姓名</th>
				<th data-options="field:'item_name',width:70,align:'center'">基本工资</th>
				<th data-options="field:'item_name',width:70,align:'center'">交通补贴</th>
				<th data-options="field:'item_name',width:70,align:'center'">通讯补贴</th>
				<th data-options="field:'item_name',width:70,align:'center'">浮动工资</th>
				<th data-options="field:'item_name',width:30,align:'center'">常规</th>
				<th data-options="field:'item_name',width:70,align:'center'">午餐补助</th>
				<th data-options="field:'item_name',width:70,align:'center'">交通补助</th>
				<th data-options="field:'item_name',width:30,align:'center'">车补</th>
				<th data-options="field:'bouns_sum',width:70,align:'center'">奖励金额</th>
				<th data-options="field:'sale_sum',width:70,align:'center'">绩效金额</th>
				<th data-options="field:'deduct_sum',width:70,align:'center'">应扣金额</th>
				<th data-options="field:'salary_standard_sum',width:70,align:'center'">标准金额</th>
				<th data-options="field:'salary_paid_sum',width:70,align:'center'">实发金额</th>
			</tr>
		</thead>
	</table>
</div>

<div id="dlg" class="easyui-dialog" style="width: 400px; height: 400px;" data-options="iconCls:'icon-save',resizable:true,modal:true" closed='true' buttons="#dlg-buttons">
	<form id="fm" method="post" novalidate>
		<div>
			<label>薪酬发放号：</label> 
			<input name="salary_grant_id" type="text" class="easy-textbox" data-options="required:true"/>
		</div><br/>
		<div>
			<label>部门名称：</label> 
			<input id="department_name" name="department_name" type="text" class="easy-textbox" data-options="required:true"/>
		</div><br/>
		<div>
			<label>总人数：</label> 
			<input id="human_amount" name="human_amount" type="text" class="easy-textbox" data-options="required:true"/>
		</div><br/>
		<div>
			<label>薪酬总额：</label> 
			<input id="salary_sum" name="salary_sum" type="text" class="easy-textbox" data-options="required:true"/>
		</div><br/>
		<div>
			<label>实发总额：</label>
			<input id="salary_paid_sum" name="salary_paid_sum" type="text" class="easy-textbox" data-options="required:true"/>
		</div><br/>
		<div>
			<label>登记人：</label> 
			<input id="register" name="register" type="text" class="easy-textbox" data-options="required:true"/>
		</div><br/>
		<div>
			<label>登记时间：</label> 
			<input name="regist_time" id="regist_time" type="text" class="easyui-datebox" data-options="required:true" editable="fasle" />
		</div><br/>
		<div>
			<label>复核人：</label> 
			<input id="checker" name="checker" type="text" class="easy-textbox" data-options="required:true"/>
		</div><br/>
		<div>
			<label>复核时间：</label> 
			<input name="check_time" id="check_time" type="text" class="easyui-datebox" data-options="required:true" editable="fasle" />
		</div><br/>
		<div>
			<label>复核状态：</label>
			<input id="check_status" name="check_status" type="text" class="easy-textbox" data-options="required:true"/>
		</div>
		
	</form>
</div>

<div id="dlg-buttons">
	<a href="javascript:void(0)" id="saveResfood" class="easyui-linkbutton c6" iconCls="icon-ok" onClick="" style="width: 90px">Save</a> 
	<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onClick="javascript:$('#dlg').dialog('close')" style="width: 90px">Cancel</a>
</div>

<script type="text/javascript">
	$(function() {
		var pager = $('#dg').datagrid().datagrid('getPager'); // get the pager of datagrid
		pager.pagination({
			buttons : [ {
				iconCls : 'icon-search',
				handler : function() {
					alert('search');
				}
			}, {
				iconCls : 'icon-add',
				handler : function() {
					$("#dlg").dialog('open').dialog('center').dialog('setTitle','薪酬发放登记');
				}
			}, {
				iconCls : 'icon-edit',
				handler : function() {
					alert('edit');
				}
			},{
				iconCls:'icon-save',
				handler : function() {
					alert('save');
				}
			},{
				iconCls:'icon-redo',
				handler : function() {
					alert('redo');
				}
			} ]
		});
	})
</script>

<script type="text/javascript">
	$(function() {
		var pager = $('#std').datagrid().datagrid('getPager'); // get the pager of datagrid
		pager.pagination({
			buttons : [ {
				iconCls : 'icon-search',
				handler : function() {
					alert('search');
				}
			}, {
				iconCls : 'icon-edit',
				handler : function() {
					alert('edit');
				}
			},{
				iconCls:'icon-save',
				handler : function() {
					alert('save');
				}
			},{
				iconCls:'icon-redo',
				handler : function() {
					alert('redo');
				}
			} ]
		});
	})
</script>

<%@ include file="../bottom.jsp"%>