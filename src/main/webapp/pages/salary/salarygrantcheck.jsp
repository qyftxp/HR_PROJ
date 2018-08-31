<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div class="easyui-panel" data-options="region:'center'" style="height: 70%">
	<table id="dg" title="薪酬发放复核" style="width: 700px; height: 200px; align: center"
		data-options="rownumbers:true,singleSelect:true,pagination:true,url:'datagrid_data1.json',method:'get'">
		<thead>
			<tr>
				<th data-options="field:'standard_id',width:70,align:'center'">薪酬单号</th>
				<th data-options="field:'department_name',width:70,align:'center'">部门名称</th>
				<th data-options="field:'human_amount',width:60,align:'center'">总人数</th>
				<th data-options="field:'salary_sum',width:70,align:'center'">薪酬总额</th>
				<th data-options="field:'salary_paid_sum',width:70,align:'center'">实发总额</th>
				<th data-options="field:'register',width:60,align:'center'">登记人</th>
				<th data-options="field:'regist_time',width:70,align:'center'">登记时间</th>
				<th data-options="field:'checker',width:60,align:'center'">复核人</th>
				<th data-options="field:'check_time',width:70,align:'center'">复核时间</th>
				<th data-options="field:'check_status',width:70,align:'center'">复核状态</th>				
			</tr>
		</thead>
	</table>
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