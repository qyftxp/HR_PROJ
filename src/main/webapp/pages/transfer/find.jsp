<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

</head>

<<<<<<< HEAD

<!-- <script type="text/javascript">
	
	 function onChangeDate(date){
		 function onChangeDate(date){
		 	
		 
		 }
		// $('#statusListTable').datagrid('reload'); //在向服务器改变数据之后，更新前台数据。
		
		 var datetime=date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate();
		 //alert(datetime);
		 var s=document.getElementById("department").value;
		$.ajax({
				url : "major_changeFindStatus.action",
				type : "POST",
				data : {"department_name":s,"regist_time":datetime},
				dataType : "JSON",
				success : function(data) {  //jsonModel   /  map
					
					var str="";
					var length=data.rows.length;
					for(var i=0;i<length;i++){
						var person = data.rows[i];
						str +='<option value="'+person.human_id+'">'+person.human_id+'</option>'
						+'<option value="'+person.department_name+'">'+person.department_name+'</option>'
						+'<option value="'+person.human_name+'">'+person.human_name+'</option>'
						+'<option value="'+person.human_major_kind_name+'">'+person.human_major_kind_name+'</option>'
						+'<option value="'+person.human_major_name+'">'+person.human_major_name+'</option>';
						
					}
					$("#statusListTable").html(str);
					
					
					/* if (data.code == 1) {
						//ffff();
						alert(data.rows.);
						alert('查询成功....');
					}else{
						alert('未查询到相关人员信息');
					} */
				}
			})
			 alert(s); 
	}
	
	 $(function(){
		//$('#statusListTable').html("");
		$('#statusListTable').datagrid({
							url:'major_changeFindStatus.action',
							pagination : true,
							pageSize : 100,
							pageList : [ 10, 50, 100, 150, 200 ],
							fitColumns : true,
							title : "人员信息表",
							idField : "human_id",
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
										field : 'department_name',
										title : '部门',
										width : 70,
										sortable : true,
										align : 'center'
									},
									{
										field : 'human_name',
										title : '姓名',
										width : 150,
										sortable : true,
										align : 'center'
									},
									{
										field : 'human_major_kind_name',
										title : '职位分类',
										width : 150,
										align : 'center'
									},
									{
										field : 'human_major_name',
										title : '职位',
										width : 150,
										sortable : true,
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
</script> -->


<script type="text/javascript">
function onChangeDate(date){
	var datetime=date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate(); 
	alert(datetime);
}

	$( onChangeDate = function (){
		
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
				regist_time:  $('#date').datebox('getValue')
			},
			columns:[[
			     {field : 'human_id',title : '档案编号',width : 40,align : 'center'},
			     {field : 'department_name',title : '部门',width : 70,sortable : true,align : 'center'}, 
			     {field : 'human_name',title : '姓名',width : 150,sortable : true,align : 'center'}, 
			     {field : 'human_major_kind_name',title : '职位分类',width : 150,align : 'center'}, 
			     {field : 'human_major_name',title : '职位',width : 150,sortable : true,align : 'center'}, 
			     {field: '_operate',  /* _operate 的作用是告诉easyui的框架，这个列不是从json中取出来的 */
						title : '操作',
						width : 150,
						align : 'center',
						formatter : function(val, row, index) {
							var str = '<a href="javascript:void(0)" onclick="showReorderDetail('
									+ index + ')">详情</a>';
							return str;
						}} 
			]]
			/* toolbar:[{
					iconCls:'icon-help',
					handler:function(){
						alert('help');
					}
				}
			] */
		});
	});
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

	


=======
<style type="text/css">
div {
	white-space: nowrap;
}
.find_table_slelct{
	border: 1px solid #F8D880 ;
	border-radius:5px;
	width: 80%;
	height:40px;
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
<body>
	<form id="findDepartment" method="post">
		<div style="margin: 20px 0 0 50px" class="find_table_slelct">
			<div id="child">
			<table CELLPADDING="5" CELLSPACING="50" style="border-collapse:separate; border-spacing:50px 0px;">
			<tr >
				<td>
					请选择部门:&nbsp;&nbsp;&nbsp;&nbsp;
					<select class="easyui-combobox" name="department_nameList" style="width: 100px;">
						<c:forEach items="${department_nameList}" var="list">
							<option value="${list.department_name}">${list.department_name}</option>
						</c:forEach>
					</select>
				</td>
				
				<td>
				
				</td>
				
			</tr>
			</table>
			</div>
		</div>
		<hr style="border: 1px dashed blue;" width=""/>
	</form>
>>>>>>> branch 'master' of https://github.com/qyftxp/HR_PROJ.git
</body>

</html>