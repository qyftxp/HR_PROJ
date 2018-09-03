
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../header.jsp"%>

<form id="form" action="">
	职位名称:<input id="human_major_name" name="human_major_name" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	登记时间:<input name="regist_time" id="regist_time" type="text" class="easyui-datebox" editable="fasle" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="button" onclick="find()" value="查询" />
</form>
<br />

<table id="dg" title="职位发布查询" style="width: 900px; height: 300px; align: center"  
	data-options="rownumbers:true,singleSelect:true,pagination:true,url:'datagrid_data1.json',method:'get'">
	<thead>
		<tr>
			<th data-options="field:'mre_id',width:60,align:'center'">编号</th>
			<th data-options="field:'department_name',width:80,align:'center'">部门类型</th>			
			<th data-options="field:'major_kind_name',width:80,align:'center'">职位分类</th>
			<th data-options="field:'major_name',width:80,align:'center'">职位名称</th>
			<th data-options="field:'human_amount',width:80,align:'center'">招聘人数</th>
			<th data-options="field:'engage_type',width:80,align:'center'">招聘类型</th>
			<th data-options="field:'deadline',width:80,align:'center'">截止日期</th>
			<th data-options="field:'register',width:80,align:'center'">登记人</th>
			<th data-options="field:'regist_time',width:80,align:'center'">登记时间</th>
			<th data-options="field:'major_describe',width:80,align:'center'">职位描述</th>
			<th data-options="field:'engage_required',width:90,align:'center'">招聘要求</th>
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