<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<style type="text/css">
/* .radioSpan {
	position: relative;
	border: 1px solid #95B8E7;
	background-color: #fff;
	vertical-align: middle;
	display: inline-block;
	overflow: hidden;
	white-space: nowrap;
	margin: 0;
	padding: 0;
	-moz-border-radius: 5px 5px 5px 5px;
	-webkit-border-radius: 5px 5px 5px 5px;
	border-radius: 5px 5px 5px 5px;
	display: block;
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
} */

#CheckStatus strong{
            width: 85px;
            height: 30px;
            line-height: 30px;
            display: inline-block;
        }
        #CheckStatus input,#CheckStatus select,textarea{
            border:1px solid #F3976C;
        }
        #CheckStatus input{
            width: 190px;
            height: 25px;
        }
        #ff select{
            width: 194px;
            height: 31px;
        }
        #CheckStatus .radioSpan .inp{
            width: 20px;
            position: absolute;
            top:-3px;
            left:-5px;

        }
        #CheckStatus .radioSpan .inp2{
            width: 20px;
            position: absolute;
            top:-3px;
            left:80px;
        }
        #CheckStatus .radioSpan{
            position: relative;
        }



</style>

<script>
	function goBack(){
	    window.history.go(-1)
	}
</script>

<script type="text/javascript">

	function add() {
		alert("123");
/* 		var button = this;
		$(button).linkbutton('disable'); */
	    $.ajax({
			url :'checkTransferStatus.action',
			method : 'POST',
			data : $("#CheckStatus").serialize(), 
			success : function(data) {
				if(data.code==1){
					alert(data.msg);
					//$(button).linkbutton('enable');
			        $('#btnExport').linkbutton('disable');
				}else{
					alert(data.msg);
				}
			}
		});
	}
</script >

</head>
<body class="easyui-layout">
	
	<div class="easyui-panel" title="调动登记" style="height: 100%">
		<div style="margin:0 0 0 500px">
			
		</div>
	<div style="padding:10px 60px 20px 30px">
		<form id="CheckStatus" method="post"   >
		
				<table id="aa" CELLPADDING="5" CELLSPACING="50" style="border-collapse: separate; border-spacing: 100px 0px;">
					<tr>
						<td style="text-align: right;"><h2>是否通过审核：</h2></td>
						<td style="text-align: left"><span class="radioSpan" style="width:200px"> &nbsp;&nbsp;&nbsp;&nbsp;<input  type="radio" name="check_status" value="0"> 否</input> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="check_status" value="1">是</input>
						</span></td>
						<hr style="border: 1px dashed blue;" width="" />
					</tr>
				
				<!-- <div id="cc" class="easyui-calendar" onchange="changeDate"></div> -->
			
				
		
				<c:forEach items="${jsonModel}" var="jm">
					<input id="mch_id" type="hidden" name="mch_id" value="${jm.mch_id}"/>
						
		    		<tr>
		    			<td><strong>档案编号:</strong>
		    			
		    				<input class="easyui-textbox" type="text" name="human_id" data-options="required:true" value="${jm.human_id}" readOnly="true"></input>
		    			</td>
		    			
		    			<td><strong>部门:</strong>
		    				<input class="easyui-textbox" type="text" name="department_name" data-options="required:true" value="${jm.department_name}" readOnly="true"></input>
		    			</td>
		    			
		    		</tr>
		    		
		    		<tr>
		    			<td><strong>姓名:</strong>
		    				<input class="easyui-textbox" type="text" name="human_name" data-options="required:true" value="${jm.human_name}" readOnly="true"></input>
		    			</td>
		    			
		    			<td><strong>原职位分类:</strong>
		    				<input class="easyui-textbox" name="major_kind_name" data-options="required:true"   value="${jm.major_kind_name}" readOnly="true"></input>
		    			</td>
		    			
		    		</tr>
		    		
		    		<tr>
		    			<td><strong>原职位名称:</strong>
		    				<input class="easyui-textbox" name="major_name" data-options="required:true" value="${jm.major_name}" readOnly="true"></input>
		    			</td>
		    			<td><strong>原薪酬标准:</strong>
		    				<input class="easyui-textbox" name="salary_standard_name" data-options="required:true"  value="${jm.salary_standard_name}" readOnly="true"></input>
		    			</td>
		 			</tr>
		    		<tr>
		    			<td><strong>新部门:</strong>
		    				<input class="easyui-textbox" name="new_department_name" data-options="required:true" value="${jm.new_department_name}" readOnly="true"></input>
		    			</td>
		    			<td><strong>新职位分类:</strong>
		    				<input class="easyui-textbox" name="new_major_kind_name" data-options="required:true"  value="${jm.new_major_kind_name}" readOnly="true"></input>
		    			</td>
						
		    		</tr>
		    		<tr>
		    			<td><strong>新职位名称:</strong>
		    				<input class="easyui-textbox" name="new_major_name" data-options="required:true" value="${jm.new_major_name}" readOnly="true"></input>
		    			</td>
		    			<td><strong>新薪酬标准:</strong>
		    				<input class="easyui-textbox" name="new_salary_standard_name" data-options="required:true"  value="${jm.new_salary_standard_name}" readOnly="true"></input>
		    			</td>
						
		    		</tr>
		    		
		    		<tr>
		    			<td><strong>登记人:</strong>
		    				<input class="easyui-textbox" name="register" data-options="required:true" value="${jm.register}" readOnly="true"></input>
		    			</td>
		    			<td><strong>登记时间:</strong>
		    				<input class="easyui-textbox" name="regist_time" data-options="required:true"  value="${jm.regist_time}" readOnly="true"></input>
		    			</td>
		    			
		    		</tr>
		    		
		    		<tr>
		    			<td><strong>审核人:</strong>
		    				<input class="easyui-textbox" name="checker" data-options="required:true" value="${user.u_name }" readOnly="true"></input>
		    			</td>
		    			<td><strong>审核时间:</strong>
		    				<input id="check_time" class="easyui-textbox" name="check_time" data-options="required:true"  value="GetDateStr()" readOnly="true"></input>
		    			</td>
		    			
		    		</tr>
		    		
		    		<tr>
		    			<td><strong>调动原因:</strong>
		    				<input class="easyui-textbox" name="change_reason" data-options="required:true" style="height:60px;width:300px" value="${jm.change_reason }" readOnly="true"></input>
		    			</td>
		    		</tr>
		    		
		    		<tr>
		    			<td><strong>审核意见:</strong>
		    				<input class="easyui-textbox" name="check_reason" data-options="required:true" style="height:60px;width:300px" ></input>
		    			</td>
		    		</tr>
		    		
		    		</c:forEach>	
			</table>
	</form>
	
		<div style="text-align:center;padding:20px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onClick="add()" id="btnExport">提交</a>
	    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    	<a href="pages/transfer/WaitCheck.jsp" class="easyui-linkbutton"  >返回</a>

	    </div>
	
	</div>
	</div>
	<script type="text/javascript">
		function GetDateStr(){
			var dd = new Date();
		    var y = dd.getFullYear();
			var m = dd.getMonth()+1;
			var d = dd.getDate();
			var h = dd.getHours();
		    var mi = dd.getMinutes();
		    var s = dd.getSeconds();
		    return y+"-"+m+"-"+d+" "+h+":"+mi+":"+s;
		}
		document.getElementById("check_time").value=GetDateStr();

</script>
</body>
</html>