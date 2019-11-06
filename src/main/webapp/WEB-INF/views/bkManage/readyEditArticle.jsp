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
<title>编辑文章</title>
</head>
<body>
<div class="container  ">
	<div class="mt-5">
		<form  action="${pageContext.request.contextPath}/editArticleFinshed">
		<input type="hidden" value="${editArticle.article_id }" name="article_id">
		<input id="articleTime" type="hidden" value="${editArticle.article_time }" name="article_time">
		文章标题：<input type="text" name="article_title" value="${editArticle.article_title }"> <br>
		文章分类：<%-- <input type="text" name="article_category" value="${editArticle.article_category }"> --%>
		<select class="mt-2"  name="article_category" id="article_category_select">
				<option selected="selected" value="0">技术</option>
				<option value="1">java</option>
				<option value="2">mysql</option>
				<option value="3">生活</option>
				<option value="4">工作</option>
				<option value="5">私密</option>
		</select>
		<input type="hidden" id="articleContext" value="${editArticle.article_context }">
		<div class="mt-4" id="editor" name="article_context" style="width:900px;height:500px;"></div>
		<button class="btn btn-success mt-4" type="submit">修改</button>
		</form>
	</div>
</div>
</body>
<script type="text/javascript">
	$(function(){
		//文章分类
		$("#article_category_select option[value='${editArticle.article_category }']").prop("selected",true);//显示当前项目性质
		//文章时间
		var time = $('#articleTime').val();
		$('#articleTime').val(getTaskTime(time));
		//初始化编辑器
		var ue = UE.getEditor('editor', { initialFrameWidth: null , autoHeightEnabled: false});
		ue.ready(function(){
			ue.execCommand("inserthtml",$('#articleContext').val());
		})
		/*转换标准日期格式*/
		function getTaskTime(strDate) {	
		    if(null==strDate || ""==strDate){
		        return "";
		    }
		    var dateStr=strDate.trim().split(" ");
		    var strGMT = dateStr[0]+" "+dateStr[1]+" "+dateStr[2]+" "+dateStr[5]+" "+dateStr[3]+" GMT+0800";
		    var date = new Date(Date.parse(strGMT));
		    var y = date.getFullYear();
		    var m = date.getMonth() + 1;  
		    m = m < 10 ? ('0' + m) : m;
		    var d = date.getDate();  
		    d = d < 10 ? ('0' + d) : d;
		    var h = date.getHours();
		    var minute = date.getMinutes();  
		    minute = minute < 10 ? ('0' + minute) : minute;
		    var second = date.getSeconds();
		    second = second < 10 ? ('0' + second) : second;
		    return y+"-"+m+"-"+d+" "+h+":"+minute+":"+second;
		};
	})
</script>
</html>