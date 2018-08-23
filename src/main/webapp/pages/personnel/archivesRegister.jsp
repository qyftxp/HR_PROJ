<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<body class="easyui-layout">
	<div class="dialog">
		<dl class="clearfix">
			<dt>人力资源档案管理</dt>
			<dd class="past">人力资源档案登记</dd>

		</dl>
		<div class="box">
			<form id="House_add_action" name="House_add_action" action="user/personal_doAdd.action" method="post">
				<%-- <input type="hidden" name="TOKEN" value="${TOKEN}"> --%>
				<div class="infos">
					<table class="field">
						<tr>
							<td class="field">标 题：</td>
							<td><input type="text" name="title" value="" id="House_add_action_title" class="text" /></td>
						</tr>
						<tr>
							<td class="field">户 型：</td>
							<td><select class="text" name="type_id" id="houseType">
									<c:forEach items="${houseTypeList}" var="houseType">
										<option value="${houseType.id}">${houseType.name}</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<td class="field">面 积：</td>
							<td><input type="text" name="floorage" value="" id="House_add_action_floorage" class="text" /></td>
						</tr>
						<tr>
							<td class="field">价 格：</td>
							<td><input type="text" name="price" value="" id="House_add_action_price" class="text" /></td>
						</tr>


						<tr>
							<td class="field">位 置：</td>
							<td>区： <select class="text" name="district.id" id="houseDistrict" onchange="onchangeDistrict(this.value)">
									<c:forEach items="${districtList}" var="district">
										<option value="${district.id}">${district.name}</option>
									</c:forEach>
							</select> 街： <select class="text" name="street_id" id="houseStreet">

							</select>
							</td>
						</tr>
						<tr>
							<td class="field">联系方式：</td>
							<td><input type="text" name="contact" value="" id="House_add_action_contact" class="text" /></td>
						</tr>
						<tr>
							<td class="field">详细信息：</td>
							<td>
								<textarea class="ckeditor" name="description">
								</textarea>
							</td>
						</tr>
					</table>
					<div class="buttons">
						<input type="submit" id="House_add_action_0" value="立即发布" />

					</div>
				</div>
			</form>

		</div>
	
</div>
	<div id="dlg-buttons">
		<a href="javascript:void(0)" id="saveResfood" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="" style="width: 90px">Save</a>
		 <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width: 90px">Cancel</a>

	</div>

		
		
		
</body>
</html>

<%@ include file="../bottom.jsp" %>