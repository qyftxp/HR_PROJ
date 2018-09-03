<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<style>
	.div{
		width:1300px;
		height:350px;
		border:1px solid #ccc;
		position:relative;
	}

	#ccc tr{
		width:320px;
		height:30px;
		float:left;
		margin:10px 0;
	}
	#ccc span{
		height:30px;
		width:100px;
		line-height:30px;
		display:inline-block;
	}
	#ccc input{
		width:200px;
		height:30px;
	}
	.tr{
		width:170px;
		height:40px;
		position:absolute;
		bottom:30px;
		left:50%;
		margin:0 0 0 -80px;
	}
	.tr .but{
		width:70px;
		height:40px;
		line-height:40px;
	}
</style>
<div class="easyui-panel" data-options="region:'center'" style="height: 70%" title="薪酬标准复核">

	<div data-options="region:'center'"  style="height: 70%">
			<table id="dg"></table>
			
		</div>
		<div class="div">
	<form id="fff" action="">
	<table id="ccc">
    	<tr>
        	<td>
            <span>薪酬标准编号</span>
            <input type="text" name="standard_id" id="standard_id" readonly="true" />
            </td>
        	
        </tr>
        <tr>
        	<td>
            <span>薪酬标准名</span>
            <input type="text" name="standard_name" id="standard_name" readonly="true" value="xxxx" />
            </td>
        </tr>
   
        <tr>
        	<td>
            <span>登记人</span>
            <input type="text"  name="register" id="register" readonly="true" />
            </td>
        </tr>
        <tr>
        	<td>
            <span>登记时间</span>
            <input type="text" name="regist_time" id="regist_time" readonly="true" />
            </td>
        	
        </tr>
        <tr>
        	<td>
            <span>基本工资</span>
            <input type="text" name="" id="item1"  />
            </td>
        </tr>
        <tr>
        	<td>
            <span>出差补助</span>
            <input type="text" name="" id="item2" />
            </td>
        </tr>
        <tr>
        	<td>
            <span>交通补助</span>
            <input type="text" name="" id="item3" />
            </td>
        </tr>
        <tr>
        	<td>
            <span>误餐补助</span>
            <input type="text" name="" id="item4" />
            </td>
        </tr>
        <tr>
        	<td>
            <span>年终奖</span>
            <input type="text" name="" id="item5" />
            </td>
        </tr>
        <tr>
        	<td>
            <span>薪酬总额</span>
            <input type="text"  name="salary_sum"  id="salary_sum"  />
            </td>
        </tr>
        <tr>
        	<td>
            <span>复核状态</span>
            <input type="text" name="check_status" id="check_status" />
            </td>
        	
        </tr>
        <tr>
        	<td>
            <span>复核意见</span>
            <input type="text" name="check_comment" id="check_comment"  />
            </td>
        	
        </tr>
        <tr>
        	<td>
            <span>备注</span>
            <input type="text" name="remark" id="remark"   />
            </td>
        </tr>
       	
       <tr class="tr">
       		<td>
            <input style="margin-right:10px;" class="but" type="button" onclick="check()" value="提交" />
            <input class="but" type="button" value="取消"  />
            </td>
       		
       </tr>
    </table>
    </form>
</div>
</div>

<script type="text/javascript">
	$(function() {
		var pager = $('#dg').datagrid().datagrid('getPager'); // get the pager of datagrid
		pager.pagination({
			buttons : []
		});
		findchech();
	})
	function findchech(){
		alert("11111111");
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
						"check_status" : "登记待复核",
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
								field : 'regist_time',
								title : '登记时间',
								width : 150,
								align : 'center'
							},
							{
								field : 'check_time',
								title : '复核时间',
								width : 150,
								align : 'center'
							},
							{
								field : 'change_time',
								title : '变更时间',
								width : 150,
								align : 'center'
							},
							{
								field : 'salary_sum',
								title : '薪酬总额 ',
								width : 150,
								align : 'center'
							},
							{
								field : 'check_status',
								title : '复核状态 ',
								width : 150,
								align : 'center'
							},
							{
								field : 'change_status',
								title : '更改状态 ',
								width : 150,
								align : 'center'
							},
							{
								field : 'check_comment',
								title : '复核意见 ',
								width : 150,
								align : 'center'
							},
							{
								field : 'remark',
								title : '备注 ',
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
									return str; 
								}
							} ] ]
				});
	}
	function findx(index) {
		var rows = $('#dg').datagrid('getRows');//获取当前页的数据行  薪酬标准编号
		var s = rows[index]['standard_id'];
		$("#standard_id").val(s);
		var a = rows[index]['standard_name'];
		$("#standard_name").val(a);
		a = rows[index]['register'];
		$("#register").val(a);
		a = rows[index]['regist_time'];
		$("#regist_time").val(a);
		$.ajax({
			url : 'salarystandarddetailsfind.action',
			method : 'POST',
			dataType : 'JSON',
			data : {
				"s" : s
			},
			success : function(data) {
				alert(data.rows[0].standard_id);
				/* alert(data.rows[0]); */
				for(var i=0;i<data.rows.length;i++){
					$("#item"+(i+1)).val(data.rows[i].salary);
				}
			}
		})
	}
	function check() {
		alert($("#regist_time").val());
		$.ajax({
			url : 'addchecksalarystandard.action',
			method : 'POST',
			dataType : 'JSON',
			data : {
				"standard_id" : $("#standard_id").val(),
				"check_status" : $("#check_status").val(),
				"check_comment" : $("#check_comment").val(),
				"remark" : $("#remark").val(),
			},
			success : function(data) {
				
			}
		})
	}
</script>

<%@ include file="../bottom.jsp"%>