<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<script type="text/javascript">
	$(function(){
		$('#transferListTable').datagrid({
			url:'resadmin/resorder.action?op=showOrderList',
							pagination : true,
							pageSize : 100,
							pageList : [ 10, 50, 100, 150, 200 ],
							fitColumns : true,
							title : "人员列表",
							idField : "roid",
							rownumbers : true,
							fit : true,
							nowrap : true,
							singleSelect : true,
							columns : [ [
									{
										field : 'roid',
										title : '档案编号',
										width : 40,
										align : 'center'
									},
									{
										
									},
									{
										field : 'userid',
										title : '部门',
										width : 70,
										sortable : true,
										align : 'center'
									},
									{
										field : 'address',
										title : '送货地址',
										width : 150,
										sortable : true,
										align : 'center'
									},
									{
										field : 'tel',
										title : '电话',
										width : 150,
										align : 'center'
									},
									{
										field : 'ordertime',
										title : '下订时间',
										width : 150,
										sortable : true,
										align : 'center'
									},
									{
										field : 'deliverytime',
										title : '送达时间',
										width : 150,
										align : 'center'
									},
									{
										field : 'status',
										title : '处理状态',
										width : 150,
										align : 'center'
									},
									{
										field : '_operate',  //_operate 的作用是告诉easyui的框架，这个列不是从json中取出来的
										title : '操作',
										width : 150,
										align : 'center',
										formatter : function(val, row, index) {
											var str = '<a href="javascript:void(0)" onclick="showReorderDetail('
													+ index + ')">详情</a>';
											if (row.status == '0') {
												str += ' <a href="javascript:void(0)" onclick="printOrder('
														+ index + ')">打单</a>';
												str += ' <a href="javascript:void(0)" onclick="transfer('
														+ index + ')">配送</a>';
											}
											return str;
										}
									} ] ]
						})
	})
	//显示订单详情
	function showReorderDetail(index) {
		$('#resorderListTable').datagrid('selectRow', index);
		var row = $('#resorderListTable').datagrid('getSelected');
		$('#resorderItemListTable').datagrid(  //没有分页
				{
					url : "resadmin/resorder.action?op=showOrderitemList&roid="
							+ row['roid'],
					fitColumns : true,
					rownumbers : true,
					fit : true,
					nowrap : true,
					singleSelect : true,
					//如果json中的数据除了rows,total外还有别的,则通过onLoadSuccess事件来取
					onLoadSuccess : function(data) {
						//备注
						$('#orderPs').html(data.msg);
					},
					columns : [ [ {
						field : 'fname',
						title : "菜品名",
						width : 40,
						align : 'center'
					}, {
						field : 'dealprice',
						title : '价格',
						width : 40,
						align : 'center'
					}, {
						field : 'num',
						title : '数量',
						width : 70,
						align : 'center'
					}, {
						field : 'smallcount',
						title : '小计',
						width : 150,
						align : 'center'
					} ] ]
				}

		)
	}
	//配送
	function transfer(index) {
		$('#resorderListTable').datagrid('selectRow', index);
		var row = $('#resorderListTable').datagrid('getSelected');
		var roid = row['roid'];
		$.ajax({
			url : "resadmin/resorder.action?op=transfer&roid=" + roid,
			type : "POST",
			dataType : "JSON",
			success : function(data) {
				if (data.code == 1) {
					$('#resorderListTable').datagrid("reload");
				}
			}
		})
	}
	
	/**
		打单
	*/
	function printOrder(index) {
		$('#resorderListTable').datagrid('selectRow', index);//关键在这里
		var row = $('#resorderListTable').datagrid('getSelected');
		//alert("abc"+index+"\t"+row)
		$.ajax({
			url : "resadmin/resorder.action?op=printOrder",
			type : "POST",
			data : 'roid=' + row.roid,
			dataType : "JSON",
			success : function(data) {  //jsonModel   /  map
				if (data.code == 1) {
					alert('打印成功....');
				}
			}
		})
	}
</script>


<body class="easyui-layout">
	<div data-options="region:'center'" title="调动登记" style="height: 70%">
		<table id="transferListTable"></table>
	</div>
</body>
</html>