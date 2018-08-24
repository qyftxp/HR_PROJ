<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<script type="text/javascript">
	function find() {
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
</body>
</html>