<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

</head>

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
</body>

</html>