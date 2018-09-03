<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../header.jsp"%>

<form id="form" action="">
	职位分类:<input id="major_kind_name" name="major_kind_name" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	职位名称:<input id="major_name" name="major_name" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	<input type="button" onclick="find()" value="查询" />
</form>
<br />

<table id="dg" title="成绩查询筛选" style="width: 600px; height: 300px; align: center"  
	data-options="rownumbers:true,singleSelect:true,pagination:true,url:'datagrid_data1.json',method:'get'">
	<thead>
		<tr>
			<th data-options="field:'exam_number',width:80,align:'center'">试卷编号</th>
			<th data-options="field:'human_name',width:80,align:'center'">姓名</th>			
			<th data-options="field:'human_idcard',width:80,align:'center'">身份证号</th>
			<th data-options="field:'major_kind_name',width:80,align:'center'">职位分类</th>
			<th data-options="field:'major_name',width:80,align:'center'">职位名称</th>
			<th data-options="field:'test_time',width:80,align:'center'">答题用时</th>
			<th data-options="field:'total_point',width:80,align:'center'">总分</th>
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
