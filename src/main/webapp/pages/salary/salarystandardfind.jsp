<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<script type="text/javascript">
	function find() {
	    var name = document.getElementById("name").value;  
	    alert(name);
	    var startTime = document.getElementById("startTime").value;  
	    //alert(startTime);
	    var endTime = document.getElementById("endTime").value;  
	    alert(endTime);
	    alert("name : " + name+"startTime : " + startTime+"endTime : " + endTime); 
		$.ajax({
			url : 'salarystandarfind.action',
			method : 'POST',
			data :"endTime="+endTime&"startTime="+startTime&"name="+name,
			success : function(data) {
				
			}
		});
	}
</script>


<body class="easyui-layout">
	<div data-options="region:'center'" title="薪酬标准查询" style="height: 70%">
		<form   action="">
			薪酬标准名称:<input id="name" name="name" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			登记时间:<input name="startTime" id="startTime" type="text" class="easyui-datebox" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input name="endTime" id="endTime" type="text" class="easyui-datebox" />
			<input type="button" onclick="find()" value="查询"/>
		</form>
	</div>
</body>
</html>