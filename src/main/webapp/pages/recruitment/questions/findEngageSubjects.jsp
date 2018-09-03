
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../header.jsp"%>
<form id="fom" action="">
	职位名称:<input id="human_major_name" name="human_major_name" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	登记时间:<input name="startTime" id="startTime" type="text" class="easyui-datebox" editable="fasle" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="button" onclick="find()" value="查询" />
</form>
<br />

<table id="dg" title="试题查询" style="width: 1000px; height: 400px; align: center"  
	data-options="rownumbers:true,singleSelect:true,pagination:true,url:'datagrid_data1.json',method:'get'">
	<thead>
		<tr>
			<th data-options="field:'sub_id',width:50,align:'center'">编号</th>
			<th data-options="field:'first_kind_name',width:100,align:'center'">试题I级分类</th>
			<th data-options="field:'second_kind_name',width:100,align:'center'">试题II级分类</th>
			<th data-options="field:'register',width:60,align:'center'">登记人</th>
			<th data-options="field:'regist_time',width:80,align:'center'">登记时间</th>
			<th data-options="field:'derivation',width:80,align:'center'">试题出处</th>
			<th data-options="field:'content',width:100,align:'center'">题干</th>
			<th data-options="field:'key_a',width:80,align:'center'">答案a</th>
			<th data-options="field:'key_b',width:80,align:'center'">答案b</th>
			<th data-options="field:'key_c',width:80,align:'center'">答案c</th>
			<th data-options="field:'key_d',width:80,align:'center'">答案d</th>
			<th data-options="field:'correct_key',width:80,align:'center'">正确答案</th>			
		</tr>
	</thead>
</table>
<script type="text/javascript">
	$(function() {
		var pager = $('#dg').datagrid().datagrid('getPager'); // get the pager of datagrid
		pager.pagination({
			buttons : [{
				iconCls : 'icon-search',
				handler : function() {
					alert('search');
				}
			}, {
				iconCls : 'icon-edit',
				handler : function() {
					alert('edit');
				}
			}, {
				iconCls:'icon-save',
				handler : function() {
					alert('save');
				}
			},{
				iconCls:'icon-redo',
				handler : function() {
					alert('redo');
				}
			}]
		});
	})
</script>

<%@ include file="../../bottom.jsp"%>
