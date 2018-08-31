<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div class="easyui-panel" data-options="region:'center'" style="height: 70%">
	<table id="dg" title="薪酬标准登记复核" style="width: 1150px; height: 200px; align: center"
			data-options="rownumbers:true,singleSelect:true,pagination:true,url:'datagrid_data1.json',method:'get'">
			<thead>
				<tr>
					<th data-options="field:'standard_id',width:100,align:'center'">薪酬标准单编号</th>
					<th data-options="field:'standard_name',width:100,align:'center'">薪酬标准单名称</th>
					<th data-options="field:'designer',width:80,align:'center'">制定者名字</th>
					<th data-options="field:'register',width:60,align:'center'">登记人</th>
					<th data-options="field:'checker',width:60,align:'center'">复核人</th>
					<th data-options="field:'changer',width:60,align:'center'">变更人</th>
					<th data-options="field:'regist_time',width:80,align:'center'">登记时间</th>
					<th data-options="field:'check_time',width:80,align:'center'">复核时间</th>
					<th data-options="field:'change_time',width:80,align:'center'">变更时间</th>
					<th data-options="field:'salary_sum',width:80,align:'center'">薪酬总额</th>
					<th data-options="field:'if_check',width:100,align:'center'">是否已复核</th>
					<th data-options="field:'status',width:80,align:'center'">更改状态</th>
					<th data-options="field:'check_comment',width:80,align:'center'">复核意见</th>
					<th data-options="field:'check_status',width:80,align:'center'">复核状态</th>
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