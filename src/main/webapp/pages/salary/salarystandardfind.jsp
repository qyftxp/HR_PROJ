<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<script type="text/javascript">
	function find() {
		$('#dg').datagrid('loadData', {
			total : 0,
			rows : []
		});
		$('#dg').datagrid(
				{
					url : 'salarystandardfind.action',
					pagination : true,
					pageSize : 5,
					pageList : [ 5, 10, 15, 20, 30 ],
					title : '人员信息表',
					idField : "sst_id",
					rownumbers : true,
					fit : true,
					nowrap : true,
					singleSelect : true,
					queryParams : {
						SalaryStandard : $("#fom").serialize(),
					},
					columns : [ [
							{
								field : 'standard_id',
								title : '薪酬标准编号',
								width : 40,
								align : 'center'
							},
							{
								field : 'standard_name',
								title : '薪酬标准名',
								width : 70,
								sortable : true,
								align : 'center'
							},
							{
								field : 'designer',
								title : '制定人',
								width : 150,
								sortable : true,
								align : 'center'
							},
							{
								field : 'register',
								title : '登记人',
								width : 150,
								align : 'center'
							},
							{
								field : 'checker',
								title : '复核人',
								width : 150,
								sortable : true,
								align : 'center'
							},
							{
								field : 'changer',
								title : '修改人',
								width : 150,
								align : 'center'
							},

							{
								field : '_operate', //_operate 的作用是告诉easyui的框架，这个列不是从json中取出来的
								title : '操作',
								width : 150,
								align : 'center',
								formatter : function(val, row, index) {
									/* alert(index);
									alert(row.standard_id); */
									/* 	var a=row.standard_id;
										alert(a); */
									var str = '<a href="javascript:findx('
											+ index + ')">详情</a>';
									alert(str);
									return str;
								}
							} ] ]
				});
	}
	function findx(index) {
		$('#std').datagrid('loadData', {
			total : 0,
			rows : []
		});
		var rows = $('#dg').datagrid('getRows');//获取当前页的数据行  薪酬标准编号
		var s = rows[index]['standard_id'];
		$.ajax({
			url : 'salarystandarddetailsfind.action',
			method : 'POST',
			dataType : 'JSON',
			data : {
				"s" : s
			},
			success : function(data) {
				if (data.code == 1) {
					var h = data.rows;
					for (var i = 0; i < h.length; i++) {
						$('#std').datagrid('insertRow', {
							index : i + 1, // 索引从0开始
							row : {
								standard_id : h[i].standard_id,
								standard_name : h[i].standard_name,
								item_name : h[i].item_name,
								salary : h[i].salary,
							}
						});
					}
				} else {
					alert(data.msg);
				}

			}
		});
	}
</script>


<body class="easyui-layout">
	<div class="easyui-panel" data-options="region:'center'" title="薪酬标准查询"
		style="height: 70%">
		<form id="fom" action="">
			薪酬标准名称:<input id="Standard_name" name="standard_name" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			登记时间:<input name="startTime" id="startTime" type="text"
				class="easyui-datebox" editable="fasle" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input name="endTime" id="endTime" type="text" class="easyui-datebox"
				editable="fasle" /> <input type="button" onclick="find()"
				value="查询" />
		</form>
		<br />
		<div data-options="region:'center'" title="订单" style="height: 70%">
			<table id="dg"></table>
		</div>
		<br />
		<div data-options="region:'center'" title="订单" style="height: 70%">
			<table id="std" title="薪酬标准单项目详细信息"
				style="width: 950px; height: 200px; align: center"
				data-options="rownumbers:true,singleSelect:true,pagination:true,url:'datagrid_data1.json',method:'get'">
				<thead>
					<tr>
						<th data-options="field:'standard_id',width:100,align:'center'">薪酬标准单编号</th>
						<th data-options="field:'standard_name',width:100,align:'center'">薪酬标准单名称</th>
						<th data-options="field:'item_name',width:80,align:'center'">工资项目</th>
						<th data-options="field:'salary',width:80,align:'center'">项目金额</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>


	<div id="dlg" class="easyui-dialog"
		style="width: 400px; height: 400px;"
		data-options="iconCls:'icon-save',resizable:true,modal:true"
		closed='true' buttons="#dlg-buttons">
		<form id="fm" method="post" novalidate>
			<div>
				<label>薪酬标准单编号 ：</label> <input id="standard_id" name="standard_id"
					class="easy-textbox" required="true">
			</div>
			<br />
			<div>
				<label>薪酬标准单名称：</label> <input id="standard_name"
					name="standard_name" class="easy-textbox" required="true">
			</div>
			<br />
			<div>
				<label>制定者：</label> <input id="designer" name="designer"
					class="easy-textbox" required="true">
			</div>
			<br />

			<div>
				<label>薪酬总额：</label> <input id="salary_sum" name="salary_sum"
					class="easy-textbox" required="true">
			</div>
			<br />
		</form>
	</div>

	<div id="dlg-buttons">
		<a href="javascript:void(0)" id="saveResfood"
			class="easyui-linkbutton c6" iconCls="icon-ok" onClick=""
			style="width: 90px">Save</a> <a href="javascript:void(0)"
			class="easyui-linkbutton" iconCls="icon-cancel"
			onClick="javascript:$('#dlg').dialog('close')" style="width: 90px">Cancel</a>
	</div>

	<script type="text/javascript">
		$(function() {
			var pager = $('#dg').datagrid().datagrid('getPager'); // get the pager of datagrid
			pager.pagination({
				buttons : []
			});
		})
	</script>
	<script type="text/javascript">
		$(
				function() {
					var pager = $('#std').datagrid().datagrid('getPager'); // get the pager of datagrid
					pager.pagination({
						buttons : [ {
							iconCls : 'icon-add',
							handler : function() {
								$("#dlg").dialog('open').dialog('center')
										.dialog('setTitle', '薪酬标准基本信息登记');
							}
						} ]
					});
				})
	</script>
</body>
</html>