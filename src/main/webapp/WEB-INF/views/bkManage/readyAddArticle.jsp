<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 	<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" type="image/x-icon">
	<link rel="icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" type="image/x-icon">
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
 	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/umedit/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/umedit/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/umedit/lang/zh-cn/zh-cn.js"></script>
<title>添加文章</title>
</head>
<body>
<div class="container  ">
	<div class="mt-5">
		<form  action="${pageContext.request.contextPath}/addArticle">
		文章标题：<input type="text" name="article_title"> <br>
		<input id="articleTime" type="hidden" name="article_time"> 
		文章分类：<input type="text" name="article_category" value="0">
		<div id="editor" name="article_context" style="width:900px;height:400px;"></div>
		<button type="submit">提交</button>
		</form>
	</div>
</div>
</body>
<script type="text/javascript">
	$(function(){
		//初始化编辑器
		var ue = UE.getEditor('editor');
		var mydate = new Date();
		$('#articleTime').val(getTime2());
		function getTime1(){
			var mydate = new Date();
			var year = mydate.getFullYear(); //获取完整的年份(4位,1970-????)
			var month = mydate.getMonth() + 1; //获取当前月份(0-11,0代表1月)
			var day = mydate.getDate(); //获取当前日(1-31)
			var time = year + "-" + month + "-" + day;
			return time;
		}
		function getTime2(){
			var mydate = new Date();
			var year = mydate.getFullYear(); //获取完整的年份(4位,1970-????)
			var month = mydate.getMonth() + 1; //获取当前月份(0-11,0代表1月)
			var day = mydate.getDate(); //获取当前日(1-31)
			var hour = mydate.getHours(); //获取当前小时数(0-23)
			var min = mydate.getMinutes(); //获取当前分钟数(0-59)
			var sec = mydate.getSeconds(); //获取当前秒数(0-59)
			var time = year + "-" + month + "-" + day + " " + hour + ":" + min + ":" + sec;
			return time;
		}
	})
</script>
</html>