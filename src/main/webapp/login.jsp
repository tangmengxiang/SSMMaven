<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>登录</title>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" type="image/x-icon">
	<link rel="icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" type="image/x-icon">

    <link rel="canonical" href="https://v4ing.bootcss.com/docs/4.3/examples/sign-in/">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
    <link href="static/css/signIn.css" rel="stylesheet">
</head>
<body class="text-center">

<form class="form-signin">
	<h1 class="h3 mb-3 font-weight-normal">请登录</h1>
	<input type="text" id="inputEmail" class="form-control" name="username"  placeholder="用户名">
	<input type="password" id="inputPassword" class="form-control" name="password" placeholder="密码" >
	<p id="errorInfo" class="text-danger"></p>
	<button type="button" class="btn btn-lg btn-primary btn-block" id="loginBtn">登录</button>
	
	<p class="mt-5 mb-3 text-muted">&copy; 2017-2019</p>
</form>
<script type="text/javascript">
	$(function(){
		//按enter登录
		$(document).keydown(function (event) {
			if (event.keyCode == 13) {
				$("#loginBtn").click();
			}
		});
		$('#loginBtn').click(function(){
			 $.post("${pageContext.request.contextPath}/login",$('form').serialize(),function(data){
				 //把json字符串转成json数据
				 data =  $.parseJSON(data);
				 if(data.success){
					 window.location.href = (data.url);
				 }else{
					 $('#errorInfo').html(data.msg);
				 }
			}) 
		})
	})
</script>
</body>
</html>