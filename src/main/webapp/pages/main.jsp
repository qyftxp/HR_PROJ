<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*,java.text.*"%>
<%@ include file="header.jsp"%>

<script type="text/javascript">

function addTab(title, iconCls, closable, href, content) {
	var tab = $("#tt");
	if (tab.tabs('exists', title)) {
		tab.tabs('select', title);
	} else {
		if (content != null || href != "") {
			tab.tabs('add', {
				title : title,
				iconCls : iconCls,
				closable : closable,
				content : content,
			});
		} else if (href != null || href != "") {
			tab.tabs('add', {
				title : title,
				iconCls : iconCls,
				closable : closable,//设置面板的关闭
				href : href
			});
		}
	}
	
	
	if (href == null || href == "") {
		//判断这个obj中的title是否已经在tab中存在
		if (tab.tabs('exists', title)) {
			tab.tabs('select', title);
		} else {
			tab.tabs('add', {
				title : title,
				iconCls : iconCls,
				closable : closable,
				content : content,
			});
		}
	} else if (content == null || content == "") {
		if (tab.tabs('exists', title)) {
			tab.tabs('select', title);
		} else {
			tab.tabs('add', {
				title : title,
				iconCls : iconCls,
				closable : closable,
				href : href
			});
		}
	}
	
}
</script>

<script>

	$(function() {
		/* 人力资源 */
		var personnelTreeData = [
				{
					"id" : 1,
					"text" : "档案登记",
					"attributes" : {
						"url" : "<iframe width='100%' height='100%' src='pages/personnel/archivesRegister.jsp' />"
					}
				},
				{
					"id" : 2,
					"text" : "档案登记复核",
					"attributes" : {
						"url" : "<iframe width='100%'  height='100%' src='resadmin/resfood/show.jsp' />"
					}
				},
				{
					"id" : 3,
					"text" : "档案查询",
					"attributes" : {
						"url" : "<iframe width='100%' height='100%' src='resadmin/resfood/rank.jsp' />"
					}
				},
				{
					"id" : 4,
					"text" : "档案更改",
					"attributes" : {
						"url" : "<iframe width='100%' height='100%' src='resadmin/resfood/rank.jsp' />"
					}
				} ];
		/* 薪酬标准 */
		
		 var salaryTreeData = [
				{
					"id" : 1,
					"text" : "薪酬标准登记",
					"attributes" : {
						"url" : "<iframe width='100%' height='100%' src='resadmin/resfood/rank.jsp' />"
					}
				},
				{
					"id" : 2,
					"text" : "薪酬标准登记复核",
					"attributes" : {
						"url" : "<iframe width='100%'  height='100%' src='resadmin/resfood/show.jsp' />"
					}
				},
				{
					"id" : 3,
					"text" : "薪酬标准查询",
					"attributes" : {
						"url" : "<iframe width='100%' height='100%' src='resadmin/resfood/rank.jsp' />"
					}

				} ];
		//薪酬发放管理
		var salaryPaidTreeData = [ {
			"id" : 1,
			"text" : "薪酬发放登记",
			"attributes" : {
				"url" : "<iframe width='100%' height='100%' src='resadmin/resfood/rank.jsp' />"
			}
		} ];
		//调动管理
		var transferTreeData = [
				{
					"id" : 1,
					"text" : "调动登记",
					"attributes" : {
						"url" : "<iframe width='100%' height='100%' src='pages/transfer/transferRegister.jsp' />"
					}
				},
				{
					"id" : 2,
					"text" : "调动审核",
					"attributes" : {
						"url" : "<iframe width='100%'  height='100%' src='resadmin/resfood/show.jsp' />"
					}
				} ];
		/*招聘管理-》 职位发布 */
		var recruitmentTreeData = [
				{
					"id" : 1,
					"text" : "职位发布登记",
					"attributes" : {
						"url" : "<iframe width='100%' height='100%' src='resadmin/resfood/rank.jsp' />"
					}
				},
				{
					"id" : 2,
					"text" : "职位发布变更",
					"attributes" : {
						"url" : "<iframe width='100%'  height='100%' src='resadmin/resfood/show.jsp' />"
					}
				},
				{
					"id" : 3,
					"text" : "职位发布查询",
					"attributes" : {
						"url" : "<iframe width='100%' height='100%' src='resadmin/resfood/rank.jsp' />"
					}
				} ];
		
		/*招聘管理-》 简历管理 */
		var jianliTreeData = [
				{
					"id" : 1,
					"text" : "简历登记",
					"attributes" : {
						"url" : "<iframe width='100%' height='100%' src='resadmin/resfood/rank.jsp' />"
					}
				},
				{
					"id" : 2,
					"text" : "简历筛选",
					"attributes" : {
						"url" : "<iframe width='100%'  height='100%' src='resadmin/resfood/show.jsp' />"
					}
				} ];
		
		/*招聘管理-> 面试管理 */
		var mianshiTreeData = [
				{
					"id" : 1,
					"text" : "面试结果登记",
					"attributes" : {
						"url" : "<iframe width='100%' height='100%' src='resadmin/resfood/rank.jsp' />"
					}
				},
				{
					"id" : 2,
					"text" : "面试筛选",
					"attributes" : {
						"url" : "<iframe width='100%'  height='100%' src='resadmin/resfood/show.jsp' />"
					}
				} ];
		
		/*招聘管理-》 招聘试题库管理 */
		var mianshiTreeData = [
				{
					"id" : 1,
					"text" : "试题登记",
					"attributes" : {
						"url" : "<iframe width='100%' height='100%' src='resadmin/resfood/rank.jsp' />"
					}
				},
				{
					"id" : 2,
					"text" : "试题查询",
					"attributes" : {
						"url" : "<iframe width='100%'  height='100%' src='resadmin/resfood/show.jsp' />"
					}
				} ];
		
		
		/*招聘管理-》 招聘考试管理 */
		var mianshiTreeData = [
				{
					"id" : 1,
					"text" : "考试出题",
					"attributes" : {
						"url" : "<iframe width='100%' height='100%' src='resadmin/resfood/rank.jsp' />"
					}
				},
				{
					"id" : 2,
					"text" : "考试答题",
					"attributes" : {
						"url" : "<iframe width='100%'  height='100%' src='resadmin/resfood/show.jsp' />"
					}
				},
				
					{
						"id" : 3,
						"text" : "成绩查询筛选",
						"attributes" : {
							"url" : "<iframe width='100%'  height='100%' src='resadmin/resfood/show.jsp' />"
						}
				 } ];
		
		showTree("personnelTree", personnelTreeData); //人力资源管理树
		showTree("salaryTree", salaryTreeData); //薪酬标准管理树 */
		showTree("salaryPaidTree", salaryPaidTreeData); //薪酬发放管理树
		showTree("transferTree", transferTreeData); //调动管理树
		showTree("recruitmentTree", recruitmentTreeData); //招聘管理树

		function showTree(treeId, treeData) {
			$("#" + treeId).tree({
				data : treeData,
				onClick : function(node) {
					if (node && node.attributes) {
						openTab(node);
					}
				}
			})
		}
	})
	function openTab(node) {
		if ($("#tt").tabs("exists", node.text)) {
			$("#tt").tabs("select", node.text);
		} else {
			$("#tt").tabs("add", {
				title : node.text,
				closable : true,
				content : node.attributes.url
			})
		}
	}
</script>

<div data-options="region:'north',split:true" style="height: 100px;"></div>
<div data-options="region:'south',split:true" style="height: 100px;"></div>
<div data-options="region:'east',title:'通知',split:true" style="width: 150px;"></div>
<div data-options="region:'west',title:'导航',split:true" style="width: 150px;">
	<div class="easyui-accordion" style="fit: true">
		<div title="人力资源档案管理" style="overflow: auto; padding: 10px;">
			<ul id="personnelTree" class="easyui-tree"></ul>
		</div>
		<div title="薪酬标准管理" style="overflow: auto; padding: 10px;">
				<ul id="salaryTree" class="easyui-tree">
			
				</ul>
			
		</div>
		<div title="薪酬发放管理" style="overflow: auto; padding: 10px;">
			<ul id="salaryPaidTree" class="easyui-tree"></ul>
		</div>
		<div title="调动管理" style="overflow: auto; padding: 10px;">
			<ul id="transferTree" class="easyui-tree"></ul>
		</div>
		<div title="招聘管理" style="overflow: auto; padding: 10px;">
		<div title="招聘管理"
				data-options="iconCls:'icon-mini-add',selected:true"
				style="padding: 10px;">
			<ul id="websiteTree" class="easyui-tree">
			
				<li><span>职位发布</span>
					<ul>
							<li><a href="javascript:void(0);"
								onclick="javascript:addTab('职位发布登记','icon-mini-add',true,'','<iframe src=back/satisfaction/openSatisfaction.jsp  frameborder=0 style=border:0;width:100%;height:99.5%;></iframe>')">职位发布登记</a></li>
							<li><a href="javascript:void(0);"
								onclick="javascript:addTab('职位发布变更','icon-mini-add',true,'','<iframe src=back/satisfaction/showTeacherSatisfaction.jsp  frameborder=0 style=border:0;width:100%;height:99.5%;></iframe>')">职位发布变更</a>
							</li>
							<li><a href="javascript:void(0);"
								onclick="javascript:addTab('职位发布查询','icon-mini-add',true,'','<iframe src=back/satisfaction/showClassSatisfaction.jsp  frameborder=0 style=border:0;width:100%;height:100%;></iframe>')">职位发布查询</a>
							</li>
						</ul></li>
				<li><span>简历管理</span>
					<ul>
							<li><a href="javascript:void(0);"
								onclick="javascript:addTab('简历登记','icon-mini-add',true,'','<iframe src=back/satisfaction/openSatisfaction.jsp  frameborder=0 style=border:0;width:100%;height:99.5%;></iframe>')">简历登记</a></li>
							<li><a href="javascript:void(0);"
								onclick="javascript:addTab('简历筛选','icon-mini-add',true,'','<iframe src=back/satisfaction/showTeacherSatisfaction.jsp  frameborder=0 style=border:0;width:100%;height:99.5%;></iframe>')">简历筛选</a>
							</li>
						</ul></li>
			  <li><span>面试管理</span>
					<ul>
							<li><a href="javascript:void(0);"
								onclick="javascript:addTab('面试结果登记','icon-mini-add',true,'','<iframe src=back/satisfaction/openSatisfaction.jsp  frameborder=0 style=border:0;width:100%;height:99.5%;></iframe>')">面试结果登记</a></li>
							<li><a href="javascript:void(0);"
								onclick="javascript:addTab('面试筛选','icon-mini-add',true,'','<iframe src=back/satisfaction/showTeacherSatisfaction.jsp  frameborder=0 style=border:0;width:100%;height:99.5%;></iframe>')">面试筛选</a>
							</li>
							
						</ul></li>
			<li><span>招聘试题库管理</span>
					<ul>
							<li><a href="javascript:void(0);"
								onclick="javascript:addTab('试题登记','icon-mini-add',true,'','<iframe src=back/satisfaction/openSatisfaction.jsp  frameborder=0 style=border:0;width:100%;height:99.5%;></iframe>')">试题登记</a></li>
							<li><a href="javascript:void(0);"
								onclick="javascript:addTab('试题查询','icon-mini-add',true,'','<iframe src=back/satisfaction/showTeacherSatisfaction.jsp  frameborder=0 style=border:0;width:100%;height:99.5%;></iframe>')">试题查询</a>
							</li>
						</ul></li>
			<li><span> 招聘考试管理 </span>
					<ul>
							<li><a href="javascript:void(0);"
								onclick="javascript:addTab('考试出题','icon-mini-add',true,'','<iframe src=back/satisfaction/openSatisfaction.jsp  frameborder=0 style=border:0;width:100%;height:99.5%;></iframe>')">考试出题</a></li>
							<li><a href="javascript:void(0);"
								onclick="javascript:addTab('考试答题','icon-mini-add',true,'','<iframe src=back/satisfaction/showTeacherSatisfaction.jsp  frameborder=0 style=border:0;width:100%;height:99.5%;></iframe>')">考试答题</a>
							</li>
							<li><a href="javascript:void(0);"
								onclick="javascript:addTab('成绩查询筛选','icon-mini-add',true,'','<iframe src=back/satisfaction/showClassSatisfaction.jsp  frameborder=0 style=border:0;width:100%;height:100%;></iframe>')">成绩查询筛选</a>
							</li>
						</ul></li>
			</ul>
		</div>
		</div>
	</div>
</div>
<div data-options="region:'center'" style="padding: 5px; background: #eee; height: auto;">
	<div id="tt" class="easyui-tabs" data-options="fit:true,border:true">
		<div title="欢迎" style="padding: 20px; height: 100%">
			源辰信息欢迎您,今天是:
			<%
			Date d = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
		%>
			<%=sdf.format(d)%>
		</div>
	</div>
</div>

<%@ include file="bottom.jsp"%>