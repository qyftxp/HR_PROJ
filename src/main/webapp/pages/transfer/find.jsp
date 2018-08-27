<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

</head>

<script type="text/javascript">
	$( onChangeDate = function find(date){
		var datetime=date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate(); 
		/* alert(datetime); */
		  	$('#statusListTable').datagrid({
			url:'major_changeFindStatus.action',
			pagination:true,
			pageSize:5,
			pageList:[5,10,15,20,30],
			title:'人员信息表',
			idField:"huf_id",
			rownumbers:true,
			fit:true,
			nowrap:true,
			singleSelect:true,
			queryParams:{
				department_name:  $("#department").val(),
				regist_time: datetime
			},
			columns:[[
			     {field : 'human_id',title : '档案编号',width : 180,align : 'center'},
			     {field : 'department_name',title : '部门',width : 170,sortable : true,align : 'center'}, 
			     {field : 'human_name',title : '姓名',width : 170,sortable : true,align : 'center'}, 
			     {field : 'human_major_kind_name',title : '职位分类',width : 170,align : 'center'}, 
			     {field : 'human_major_name',title : '职位',width : 170,sortable : true,align : 'center'}, 
			     {field: '_operate',  /* _operate 的作用是告诉easyui的框架，这个列不是从json中取出来的 */
						title : '操作',
						width : 170,
						align : 'center',
						formatter : function(val, row, index) {
							var str = '<a href="/pages/transfer/transferRegister.jsp" onclick="showStatusDetail('+row.human_id+')">详情</a>';
							return str;
						}} 
			]]
		});
	});
	
	
	function showStatusDetail(human_id) {
		/* var row = $('#statusListTable').datagrid('getData').rows[index];*/
		/* alert("123");  */
		$.ajax({
			url:'findemployee.action',
			data:{"human_id":human_id},
			method:'POST',
			dataType:'JSON',
			success : function(data){
				alert("456");
				if(data.code==1){
					alert(data);
				}else{
					alert(data.msg);
				}
			}
		});
	}
	
	
</script>

<style type="text/css">
div {
	white-space: nowrap;
}

.find_table_slelct {
	border: 1px solid #F8D880;
	border-radius: 5px;
	width: 80%;
	height: 40px;
	margin-top: 10px;
	background-color: #F3F3F3;
	padding-bottom: 10px;
}

#child {
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -15% 0 0 -40%;
}
</style>
<body class="easyui-layout">
	<div style="height:100%">
	<form id="findDepartment" method="post">
		<div style="margin: 20px 0 0 50px" class="find_table_slelct">
			<div id="child">
				<table id="aa" CELLPADDING="5" CELLSPACING="70" style="border-collapse: separate; border-spacing: 50px 0px;">
					<tr>
						<td>请选择部门:&nbsp;&nbsp;&nbsp;&nbsp; <select id="department" class="easyui-combobox" name="department_nameList" style="width: 100px;" editable="false">
								<c:forEach items="${department_nameList}" var="list">
									<option value="${list.department_name}">${list.department_name}</option>
								</c:forEach>
						</select>
						</td>

						<td>请选择建档时间:&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" id="date" name="date_" class="easyui-datebox" data-options="onSelect:onChangeDate" editable="false" />
						</td>
					</tr>
				</table>
				<!-- <div id="cc" class="easyui-calendar" onchange="changeDate"></div> -->
			</div>
		</div>
		<hr style="border: 1px dashed blue;" width="" />
	</form>
	
	<div data-options="region:'center'" title="订单" style="height: 70%">
		<table id="statusListTable"></table>
	</div> 
	
	</div>

	


</body>

</html>