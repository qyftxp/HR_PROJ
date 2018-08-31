<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>


<script type="text/javascript">
$(function(){
	$('#waitCheckListTable').datagrid({
		url:'findWaitCheck.action',
						pagination : true,
						pageSize:5,
						pageList:[5,10,15,20,30],
						fitColumns : true,
						title : "调动待审核人员表",
						idField : "mch_id",
						rownumbers : true,
						fit : true,
						nowrap : true,
						singleSelect : true,
						columns : [ [
								{
									field : 'human_id',
									title : '档案编号',
									width : 40,
									align : 'center'
								},
								{
									field : 'human_name',
									title : '姓名',
									width : 70,
									sortable : true,
									align : 'center'
								},
								{
									field : 'regist_time',
									title : '调动登记时间',
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
									field : 'change_reason',
									title : '调动原因',
									width : 150,
									sortable : true,
									align : 'center'
								},{
									field : '_operate',  //_operate 的作用是告诉easyui的框架，这个列不是从json中取出来的
									title : '审核',
									width : 150,
									align : 'center',
									formatter : function(val, row, index) {
										var str = '<a href="findWaitCheckDetail.action?human_id='+row.human_id+'"+>详情</a>';
										return str;
									}
								} ] ]
					})
})

	
</script>



</head>
<body class="easyui-layout"> 
	<div data-options="region:'center'" title="调动审核" style="height: 70%">
		<table id="waitCheckListTable"></table>
	</div> 
</body>
</html>