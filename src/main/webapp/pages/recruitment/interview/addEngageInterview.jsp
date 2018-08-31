<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../header.jsp"%>

<div class="easyui-panel" title="面试结果登记" style="height:100%">
	<form id="add" method="post">
		<table cellpadding="5" cellspacing="30" style="border-collapse:separate; border-spacing:20px 0px;">					
			<tr>				
				<td>求职者：&nbsp;
					<input class="easyui-textbox" type="text" name="name" data-options="required:true"></input>
				</td>				
				<td>面试次数：
					<input class="easyui-textbox" type="text" name="number" data-options="required:true"></input>
				</td>
				<td>面试官：&nbsp;
					<input class="easyui-textbox" type="text" name="name" data-options="required:true"></input>
				</td>
				<td>面试结果：
					<input class="easyui-textbox" type="text" name="result" data-options="required:true"></input>
				</td>
			</tr>			
	    	<tr>
	    		<td>职位分类：
					<select class="major_kind_nameList" name="major_kind_nameList">
						<c:forEach items="${major_kind_nameList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>
				<td>职位名称：
					<select class="major_nameList" name="major_nameList">
						<c:forEach items="${major_nameList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>
				<td>形象评价：
					<select class="image_degreeList" name="image_degreeList">
						<c:forEach items="${image_degreeList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>
				<td>口才评价：
					<select class="native_language_degreeList" name="native_language_degreeList">
						<c:forEach items="${native_language_degreeList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>								
			</tr>
			<tr>
				<td>EQ 评价：&nbsp;
					<select class="EQ_degreeList" name="EQ_degreeList">
						<c:forEach items="${EQ_degreeList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>
				<td>IQ 评价：&nbsp;&nbsp;
					<select class="IQ_degreeList" name="IQ_degreeList">
						<c:forEach items="${IQ_degreeList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>
				<td>外语水平：
					<select class="foreign_language_degreeList" name="foreign_language_degreeList">
						<c:forEach items="${foreign_language_degreeList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>
				<td>应变能力：
					<select class="response_speed_degreeList" name="response_speed_degreeList">
						<c:forEach items="${response_speed_degreeList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>								
			</tr>
			<tr>
				<td>综合素质：
					<select class="multi_quality_degreeList" name="multi_quality_degreeList">
						<c:forEach items="${multi_quality_degreeList}" var="list">
							<option value="${list.attribute_name}">${list.attribute_name}</option>
						</c:forEach>
					</select>
				</td>	    		
	    		<td>面试状态：
	    			<input class="easyui-textbox" type="text" name="message" data-options="required:true"></input>
	    		</td>
	    		<td>面试时间：
					<input name="interviewTime" id="interviewTime" type="text" class="easyui-datebox" editable="fasle" data-options="required:true" />
				</td>
				<td>面试评价：
	    			<input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px;width:200px"></input>
	    		</td>
	    	</tr>
		</table>
	</form>
	<div style="text-align: center; padding: 10px">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">登记</a>&nbsp;&nbsp;&nbsp;
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">清除</a>
	</div>
</div>

<script>
	function submitForm() {
		$('#add').form('submit');
	}
	function clearForm() {
		$('#add').form('clear');
	}
</script>

<%@ include file="../../bottom.jsp"%>