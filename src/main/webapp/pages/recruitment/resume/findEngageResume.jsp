<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../header.jsp"%>

<form id="fom" action="">
	职位名称:<input id="human_major_name" name="human_major_name" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	登记时间:<input name="startTime" id="startTime" type="text" class="easyui-datebox" editable="fasle" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="button" onclick="find()" value="查询" />
</form>
<br />

<table id="dg" title="简历筛选" style="width: 1100px; height: 400px; align: center"  
	data-options="rownumbers:true,singleSelect:true,pagination:true,url:'datagrid_data1.json',method:'get'">
	<thead>
		<tr>
			<th data-options="field:'res_id',width:30,align:'center'">编号</th>
			<th data-options="field:'human_name',width:40,align:'center'">姓名</th>
			<th data-options="field:'engage_type',width:60,align:'center'">招聘类型</th>
			<th data-options="field:'human_address',width:60,align:'center'">地址</th>
			<th data-options="field:'human_postcode',width:60,align:'center'">邮编</th>
			<th data-options="field:'human_major_name',width:60,align:'center'">职位名称</th>
			<th data-options="field:'human_telephone',width:60,align:'center'">电话号码</th>
			<th data-options="field:'human_email',width:50,align:'center'">Email</th>
			<th data-options="field:'human_hobby',width:60,align:'center'">兴趣爱好</th>
			<th data-options="field:'human_specility',width:60,align:'center'">特长</th>
			<th data-options="field:'human_sex',width:40,align:'center'">性别</th>
			<th data-options="field:'human_party',width:60,align:'center'">政治面貌</th>
			<th data-options="field:'human_race',width:40,align:'center'">民族</th>
			<th data-options="field:'human_age',width:40,align:'center'">年龄</th>
			<th data-options="field:'human_educated_degree',width:60,align:'center'">教育程度</th>
			<th data-options="field:'human_educated_major',width:60,align:'center'">专业</th>
			<th data-options="field:'human_college',width:60,align:'center'">毕业院校</th>
			<th data-options="field:'human_idcard',width:60,align:'center'">身份证号</th>
			<th data-options="field:'human_history_records',width:60,align:'center'">个人履历</th>
			<th data-options="field:'remark',width:50,align:'center'">备注</th>
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
