<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 	<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" type="image/x-icon">
	<link rel="icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" type="image/x-icon">
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>
 	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/umedit/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/umedit/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/umedit/lang/zh-cn/zh-cn.js"></script>
<title>编辑文章</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/addArticle">
	文章标题：<input type="text" name="article_title"> <br>
	文章分类：<input type="text" name="article_category" value="0">
	<div id="editor" name="article_context" style="width:900px;height:400px;"></div>
	<button type="submit">提交</button>
	</form>
	
	
</body>
<script type="text/javascript">
	$(function(){
		//初始化编辑器
		var ue = UE.getEditor('editor');
	})
</script>
</html>