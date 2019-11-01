<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>首页</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" type="image/x-icon">
<link rel="icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
<style>
    .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }

    @media (min-width: 768px) {
        .bd-placeholder-img-lg {
            font-size: 3.5rem;
        }
    }
  
</style>
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/static/css/covers.css" rel="stylesheet">
</head>
<body class="text-center">
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="masthead mb-auto">
        <div class="inner">
            <h3 class="masthead-brand">馆羽网</h3>
            <nav class="nav nav-masthead justify-content-center">
                <a class="nav-link active" >主页</a>
               <!--  <a class="nav-link login" href="#">登录</a> -->
                <a class="nav-link blog " style="cursor: pointer;" >博客</a>
                <a class="nav-link" style="cursor: pointer;">记账</a>
            </nav>
        </div>
    </header>

    <main role="main" class="inner cover">
        <h1 class="cover-heading">您好！欢迎来访！</h1>
        <p class="lead">该页面设计基于网络模板，以黑色为底色来构建主页是个人喜好，如果你有更好的建议，请来联系我！</p>
        <p class="lead">
            <a href="#" class="btn btn-lg btn-secondary">了解更多</a>
        </p>
    </main>

    <footer class="mastfoot mt-auto">
        <div class="inner">
            <p><a href="http://www.beian.miit.gov.cn">桂ICP备19008952号</a></p>
        </div>
    </footer>
</div>
<script type="text/javascript">
	$(function(){
		$('.login').click(function(){
			$(window).attr('location','${pageContext.request.contextPath}/login');
		});
		$('.blog').click(function(){
			$(window).attr('location','${pageContext.request.contextPath}/blog');
		})
	})
</script>
</body>
</html>