<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<script type="text/javascript">
	function find() {
<<<<<<< HEAD
	    $.ajax({
			url :'salarystandardfind.action',
			method : 'POST',
			data : $("#fom").serialize(), 
			success : function(data) {
				
			}
		});
	}
</script>


<body class="easyui-layout">
	<div data-options="region:'center'" title="薪酬标准查询" style="height: 70%">
		<form id="fom"  action="">
			薪酬标准名称:<input id="Standard_name" name="standard_name" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			登记时间:<input name="startTime" id="startTime" type="text" class="easyui-datebox" editable="fasle" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input name="endTime" id="endTime" type="text" class="easyui-datebox" editable="fasle" />
			<input type="button" onclick="find()" value="查询"/>
		</form>
	</div>
=======
		$("#td").html("");
		$.ajax({
			url : 'salarystandardfind.action',
			method : 'POST',
			data : $("#fom").serialize(),
			success : function(data) {
				var list = data.rows;
				var tbody = document.getElementById('td');
				for (var i = 0; i < list.length; i++) {
					var trow = getDataRow(list[i]); //定义一个方法,返回tr数据
					tbody.appendChild(trow);
				}
			}
		});
	}
	function getDataRow(h) {
		var row = document.createElement('tr'); //创建行

		var ssd_id = document.createElement('td'); //创建第一列id
		ssd_id.innerHTML = h.ssd_id; //填充数据
		row.appendChild(ssd_id); //加入行  ，下面类似
		
		
		var standard_id = document.createElement('td'); //创建第一列id
		standard_id.innerHTML = h.standard_id; //填充数据
		row.appendChild(standard_id); //加入行  ，下面类似
		
		var standard_name = document.createElement('td'); //创建第一列id
		standard_name.innerHTML = h.standard_name; //填充数据
		row.appendChild(standard_name); //加入行  ，下面类似
		
		var designer = document.createElement('td'); //创建第一列id
		designer.innerHTML = h.designer; //填充数据
		row.appendChild(designer); //加入行  ，下面类似
		
		var register = document.createElement('td'); //创建第一列id
		register.innerHTML = h.register; //填充数据
		row.appendChild(register); //加入行  ，下面类似

		var checker = document.createElement('td'); //创建第一列id
		checker.innerHTML = h.checker; //填充数据
		row.appendChild(checker); //加入行  ，下面类似
		
		var changer = document.createElement('td'); //创建第一列id
		changer.innerHTML = h.changer; //填充数据
		row.appendChild(changer); //加入行  ，下面类似

		
		var regist_time = document.createElement('td'); //创建第一列id
		regist_time.innerHTML = h.regist_time; //填充数据
		row.appendChild(regist_time); //加入行  ，下面类似

		var check_time = document.createElement('td'); //创建第一列id
		check_time.innerHTML = h.check_time; //填充数据
		row.appendChild(check_time); //加入行  ，下面类似
		
		var change_time = document.createElement('td'); //创建第一列id
		change_time.innerHTML = h.change_time; //填充数据
		row.appendChild(change_time); //加入行  ，下面类似
		
		var salary_sum = document.createElement('td'); //创建第一列id
		salary_sum.innerHTML = h.salary_sum; //填充数据
		row.appendChild(salary_sum); //加入行  ，下面类似

		var check_status = document.createElement('td'); //创建第一列id
		check_status.innerHTML = h.check_status; //填充数据
		row.appendChild(check_status); //加入行  ，下面类似

		var change_status = document.createElement('td'); //创建第一列id
		change_status.innerHTML = h.change_status; //填充数据
		row.appendChild(change_status); //加入行  ，下面类似

		var check_comment = document.createElement('td'); //创建第一列id
		check_comment.innerHTML = h.check_comment; //填充数据
		row.appendChild(check_comment); //加入行  ，下面类似		
		
		var remark = document.createElement('td'); //创建第一列id
		remark.innerHTML = h.remark; //填充数据
		row.appendChild(remark); //加入行  ，下面类似	
		
		
		
		//到这里，json中的数据已经添加到表格中，下面为每行末尾添加删除按钮

		var delCell = document.createElement('td');//创建第四列，操作列
		row.appendChild(delCell);
		var btnDel = document.createElement('input'); //创建一个input控件
		btnDel.setAttribute('type', 'button'); //type="button"
		btnDel.setAttribute('value', '详情');
		btnDel.onclick = function() {
			findx(this.parentNode.parentNode.cells[1].innerHTML);
		}
		delCell.appendChild(btnDel); //把按钮加入td，别忘了
		
		var delCell1 = document.createElement('td');//创建第四列，操作列
		row.appendChild(delCell1);
		var btnDel1 = document.createElement('input'); //创建一个input控件
		btnDel1.setAttribute('type', 'button'); //type="button"
		btnDel1.setAttribute('value', '修改');
		btnDel1.onclick = function() {
			alert("修改");
			updata(this.parentNode.parentNode.cells[1].innerHTML);
			
		}
		delCell1.appendChild(btnDel1); //把按钮加入td，别忘了
		

		return row; //返回tr数据	 
	}
	function updata(s){
		alert("跳去修改页面");
	}
	function findx(s) {
		$.ajax({
			url : 'salarystandarddetailsfind.action',
			method : 'POST',
			dataType : 'JSON',
			data : {"s":s},
			success : function(data) {
				var list = data.rows;
				var tbody = document.getElementById('td');
				alert(list[1].standard_id);
				for (var i = 0; i < list.length; i++) {
					
				}
			}
		});
	}
</script>


<body class="easyui-layout">
	<div class="easyui-panel"  data-options="region:'center'" title="薪酬标准查询" style="height: 70%">
		<form id="fom" action="">
			薪酬标准名称:<input id="Standard_name" name="standard_name" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			登记时间:<input name="startTime" id="startTime" type="text"
				class="easyui-datebox" editable="fasle" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input name="endTime" id="endTime" type="text" class="easyui-datebox"
				editable="fasle" /> <input type="button" onclick="find()"
				value="查询" />
		</form>
		<br/>
		<table id="dg" title="薪酬标准基本信息" style="width: 1150px; height: 200px; align: center"
			data-options="rownumbers:true,singleSelect:true,pagination:true,url:'datagrid_data1.json',method:'get'">
			<thead>
				<tr>
					<th data-options="field:'standard_id',width:100,align:'center'">薪酬标准单编号</th>
					<th data-options="field:'standard_name',width:100,align:'center'">薪酬标准单名称</th>
					<th data-options="field:'designer',width:80,align:'center'">制定者名字</th>
					<th data-options="field:'register',width:60,align:'center'">登记人</th>
					<th data-options="field:'checker',width:60,align:'center'">复核人</th>
					<th data-options="field:'changer',width:60,align:'center'">变更人</th>
					<th data-options="field:'regist_time',width:80,align:'center'">登记时间</th>
					<th data-options="field:'check_time',width:80,align:'center'">复核时间</th>
					<th data-options="field:'change_time',width:80,align:'center'">变更时间</th>
					<th data-options="field:'salary_sum',width:80,align:'center'">薪酬总额</th>
					<th data-options="field:'if_check',width:100,align:'center'">是否已复核</th>
					<th data-options="field:'status',width:80,align:'center'">更改状态</th>
					<th data-options="field:'check_comment',width:80,align:'center'">复核意见</th>
					<th data-options="field:'check_status',width:80,align:'center'">复核状态</th>
				</tr>
			</thead>
		</table>		
		<br/>
		<table id="std" title="薪酬标准单项目详细信息" style="width: 950px; height: 200px; align: center"
			data-options="rownumbers:true,singleSelect:true,pagination:true,url:'datagrid_data1.json',method:'get'">
			<thead>
				<tr>
					<th data-options="field:'standard_id',width:100,align:'center'">薪酬标准单编号</th>
					<th data-options="field:'standard_name',width:100,align:'center'">薪酬标准单名称</th>
					<th data-options="field:'item_name',width:80,align:'center'">基本工资</th>
					<th data-options="field:'item_name',width:80,align:'center'">交通补贴</th>
					<th data-options="field:'item_name',width:80,align:'center'">通讯补贴</th>
					<th data-options="field:'item_name',width:80,align:'center'">浮动工资</th>
					<th data-options="field:'item_name',width:50,align:'center'">常规</th>
					<th data-options="field:'item_name',width:80,align:'center'">午餐补助</th>
					<th data-options="field:'item_name',width:80,align:'center'">交通补助</th>
					<th data-options="field:'item_name',width:50,align:'center'">车补</th>
					<th data-options="field:'salary_sum',width:80,align:'center'">薪酬总额</th>
				</tr>
			</thead>
		</table>
	</div>
	
	<div id="dlg" class="easyui-dialog" style="width: 400px; height: 400px;" data-options="iconCls:'icon-save',resizable:true,modal:true" closed='true' buttons="#dlg-buttons">
			<form id="fm" method="post" novalidate>
				<div>
					<label>薪酬标准单编号  ：</label> 
					<input id="standard_id" name="standard_id" class="easy-textbox" required="true">		
				</div><br/>
				<div>
					<label>薪酬标准单名称：</label> 
					<input id="standard_name" name="standard_name" class="easy-textbox" required="true">
				</div><br/>
				<div>
					<label>制定者：</label> 
					<input id="designer" name="designer" class="easy-textbox" required="true">			
				</div><br/>
				<div>
					<label>登记人：</label> 
					<input id="register" name="register" class="easy-textbox" required="true">
				</div><br/>
				<div>
					<label>复核人：</label> 
					<input id="checker" name="checker" class="easy-textbox" required="true">	
				</div><br/>
				<div>
					<label>变更人：</label> 
					<input id="changer" name="changer" class="easy-textbox" required="true">
				</div><br/>
				<div>
					<label>登记时间：</label> 
					<input name="regist_time" id="regist_time" type="text" class="easyui-datebox" data-options="required:true" editable="fasle" />			
				</div><br/>
				<div>
					<label>复核时间：</label> 
					<input name="check_time" id="check_time" type="text" class="easyui-datebox" data-options="required:true" editable="fasle" />
				</div><br/>
				<div>
					<label>变更时间：</label> 
					<input name="change_time" id="change_time" type="text" class="easyui-datebox" data-options="required:true" editable="fasle" />			
				</div><br/>
				<div>
					<label>薪酬总额：</label> 
					<input id="salary_sum" name="salary_sum" class="easy-textbox" required="true">
				</div><br/>
				<div>
					<label>复核状态：</label>
					<input id="check_status" name="check_status" class="easy-textbox" required="true">		
				</div><br/>
				<div>
					<label>更改状态 ：</label>
					<input id="change_status" name="change_status" class="easy-textbox" required="true">
				</div><br/>
				<div>
					<label>复核意见：</label>
					<input id="check_comment" name="check_comment" class="easy-textbox" required="true">			
				</div><br/>
				<div>
					<label>备注 ：</label>
					<input id="remark" name="remark" class="easy-textbox" required="true">
				</div>
			</form>
		</div>

		<div id="dlg-buttons">
			<a href="javascript:void(0)" id="saveResfood" class="easyui-linkbutton c6" iconCls="icon-ok" onClick="" style="width: 90px">Save</a> 
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onClick="javascript:$('#dlg').dialog('close')" style="width: 90px">Cancel</a>
		</div>
	
	<script type="text/javascript">
		$(function() {
			var pager = $('#dg').datagrid().datagrid('getPager'); // get the pager of datagrid
			pager.pagination({
				buttons : [ {
					iconCls : 'icon-search',
					handler : function() {
						alert('search');
					}
				}, {
					iconCls : 'icon-add',
					handler : function() {
						$("#dlg").dialog('open').dialog('center').dialog('setTitle','薪酬标准基本信息登记');
					}
				}, {
					iconCls : 'icon-edit',
					handler : function() {
						alert('edit');
					}
				},{
					iconCls:'icon-save',
					handler : function() {
						alert('save');
					}
				},{
					iconCls:'icon-redo',
					handler : function() {
						alert('redo');
					}
				} ]
			});
		})
	</script>
	<script type="text/javascript">
		$(function() {
			var pager = $('#std').datagrid().datagrid('getPager'); // get the pager of datagrid
			pager.pagination({
				buttons : [ {
					iconCls : 'icon-search',
					handler : function() {
						alert('search');
					}
				}, {
					iconCls : 'icon-edit',
					handler : function() {
						alert('edit');
					}
				},{
					iconCls:'icon-save',
					handler : function() {
						alert('save');
					}
				},{
					iconCls:'icon-redo',
					handler : function() {
						alert('redo');
					}
				} ]
			});
		})
	</script>
>>>>>>> branch 'master' of https://github.com/qyftxp/HR_PROJ.git
</body>
</html>