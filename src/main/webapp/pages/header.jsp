<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.4.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.4.5/themes/icon.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.4.5/demo.css">
<script type="text/javascript" src="jquery-easyui-1.5.4.5/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.5.4.5/jquery.easyui.min.js"></script>
<script src="resadmin/ckeditor/ckeditor.js"></script>
<script src="pages/js/return.js"></script>
<script type="text/javascript" src="jquery-easyui-1.5.4.5//locale/easyui-lang-zh_CN.js"></script>


<title>HR人力资源管理系统</title>
</head>
<body class="easyui-layout">