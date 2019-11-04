<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>博客后台管理</title><link rel="shortcut icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" type="image/x-icon">
<link rel="icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" type="image/x-icon">
<link href="${pageContext.request.contextPath}/static/css/dashboard.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
<style type="text/css">
	iframe{
		width: 100%;
		height:100%;
	}
</style>
</head>
<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#"><h3>后台管理</h3></a>
    <h3><a href="${pageContext.request.contextPath}/blog">返回博客</a></h3>
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
        	<a class="nav-link" href="${pageContext.request.contextPath}/logout"><h4><shiro:principal property="user_name" /><span class="text-danger">注销</span></h4></a>
        </li>
    </ul>
</nav>

<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column  mt-5">
                    <li class="nav-item">
                        <a class="nav-link active" href="#" id="manageArticle">
                            <h4>文章管理</h4>
                        </a>
                    </li>
					<li class="nav-item">
                        <a class="nav-link" href="#" id="addArticle">
                            <h4>发布文章</h4>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <h4>密码管理</h4>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <h4>用户管理</h4>
                        </a>
                    </li>

                </ul>
            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4" id="contextEdit">
           <!--最开始显示文章列表-->
            <iframe  id="bkmanage_top" src="${pageContext.request.contextPath}/BKArticlePage" frameborder="0" name="bkmanage_top"  onload="this.height=body.offsetHeight"></iframe>
        </main>

    </div>
</div>
<script>
    $(function () {
    	var html;
        $('#addArticle').click(function () {
        	html = '<iframe  id="bkmanage_top" src="${pageContext.request.contextPath}/readyAddArticle" frameborder="0" name="bkmanage_top"  onload="this.height=body.offsetHeight"></iframe>'
            $('#contextEdit').html(html);
        });
        $('#manageArticle').click(function () {
        	html = '<iframe  id="bkmanage_top" src="${pageContext.request.contextPath}/BKArticlePage" frameborder="0" name="bkmanage_top"  onload="this.height=body.offsetHeight"></iframe>'
            $('#contextEdit').html(html);
        });
        $('#editArticle').click(function () {
            var html = '<h1>编辑文章</h1>';
            $(this).parent().parent().find('li').removeClass('active');
            $(this).addClass("active");
            $('#contextEdit').html(html);
        });
        $('#deleteArticle').click(function () {
            var html = '<h1>删除文章</h1>';
            $('#contextEdit').html(html);
        });
    })
</script>
</html>