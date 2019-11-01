<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <title>后台文章列表</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" type="image/x-icon">
	<link rel="icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
</head>
<body>
<div class="container  ">
	<table class="table table-hover mt-5 " >
	    <thead class="thead-light table-sm">
	    <tr>
	        <th>标题</th>
	        <th>操作</th>
	    </tr>
	    </thead>
	    <tbody id="articleList">
	 		<!-- ajax来加载数据 -->
	    </tbody>
	</table>
</div>
<script type="text/javascript">
	$(function(){
		loadArticle();
		function loadArticle(){
			$.post("${pageContext.request.contextPath}/getAllArticle",function(data){
				console.log(data);
				var html;
				for(i in data){ 
					html = '<tr><td>' + data[i].article_title + '</td>';
					html += '<td> <a  href="${pageContext.request.contextPath}/readyArticle?article_id=' + data[i].article_id + '">编辑</a>|'+ 
					'<a  href="${pageContext.request.contextPath}/deleteArticle?article_id=' + data[i].article_id + '">删除</a>' + '</td></tr>';
					$('#articleList').append(html);
				}
				
			})
		}
	})
</script>
</body>
</html>