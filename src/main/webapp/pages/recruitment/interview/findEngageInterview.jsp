
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../header.jsp"%>

<form id="fom" action="">
	职位名称:<input id="human_major_name" name="human_major_name" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	面试时间:<input name="startTime" id="startTime" type="text" class="easyui-datebox" editable="fasle" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="button" onclick="find()" value="查询" />
</form>
<br />

<table id="dg" title="面试筛选" style="width: 1100px; height: 400px; align: center"  
	data-options="rownumbers:true,singleSelect:true,pagination:true,url:'datagrid_data1.json',method:'get'">
	<thead>
		<tr>
			<th data-options="field:'ein_id',width:40,align:'center'">编号</th>
			<th data-options="field:'human_name',width:60,align:'center'">求职者</th>
			<th data-options="field:'interview_amount',width:70,align:'center'">面试次数</th>
			<th data-options="field:'human_major_kind_name',width:70,align:'center'">职位分类</th>
			<th data-options="field:'human_major_name',width:70,align:'center'">职位名称</th>
			<th data-options="field:'image_degree',width:60,align:'center'">形象评价</th>
			<th data-options="field:'native_language_degree',width:60,align:'center'">口才评价</th>
			<th data-options="field:'foreign_language_degree',width:60,align:'center'">外语水平</th>
			<th data-options="field:'response_speed_degree',width:60,align:'center'">应变能力</th>
			<th data-options="field:'EQ_degree',width:60,align:'center'">EQ评价</th>
			<th data-options="field:'IQ_degree',width:60,align:'center'">IQ评价</th>
			<th data-options="field:'multi_quality_degree',width:60,align:'center'">综合素质</th>
			<th data-options="field:'register',width:60,align:'center'">面试官</th>
			<th data-options="field:'registe_time',width:70,align:'center'">面试时间</th>
			<th data-options="field:'result',width:70,align:'center'">面试结果</th>
			<th data-options="field:'interview_comment',width:70,align:'center'">面试评价</th>
			<th data-options="field:'interview_status',width:70,align:'center'">面试状态</th>
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
