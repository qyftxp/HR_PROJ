<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../header.jsp"%>

<table id="dg" title="职位发布查询" style="width: 1010px; height: 400px; align: center"  
	data-options="rownumbers:true,singleSelect:true,pagination:true,url:'datagrid_data1.json',method:'get'">
	<thead>
		<tr>
			<th data-options="field:'itemid',width:60,align:'center'">编号</th>
			<th data-options="field:'itemid',width:80,align:'center'">一级机构</th>
			<th data-options="field:'productid',width:80,align:'center'">二级机构</th>
			<th data-options="field:'listprice',width:80,align:'center'">三级机构</th>
			<th data-options="field:'unitcost',width:80,align:'center'">职位分类</th>
			<th data-options="field:'attr1',width:80,align:'center'">职位名称</th>
			<th data-options="field:'status',width:80,align:'center'">招聘人数</th>
			<th data-options="field:'itemid',width:80,align:'center'">招聘类型</th>
			<th data-options="field:'productid',width:80,align:'center'">截止日期</th>
			<th data-options="field:'listprice',width:80,align:'center'">登记人</th>
			<th data-options="field:'unitcost',width:80,align:'center'">登记时间</th>
			<th data-options="field:'attr1',width:80,align:'center'">职位描述</th>
			<th data-options="field:'status',width:80,align:'center'">招聘要求</th>
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
				iconCls : 'icon-add',
				handler : function() {
					alert('add');
				}
			}, {
				iconCls : 'icon-edit',
				handler : function() {
					alert('edit');
				}
			}]
		});
	})
</script>

<%@ include file="../../bottom.jsp"%>