<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>博客页面</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" type="image/x-icon">
<link rel="icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" type="image/x-icon">

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/static/css/playFair.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/static/css/blog.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
<style>
	 body{
	 	 background:url('${pageContext.request.contextPath}/static/img/2.jpg') no-repeat ;
	 	 background-size: cover;
	 }
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
       .article-context{
      	height: 1.5em;
      	width:15em;
        overflow: hidden;
		text-overflow:ellipsis;
		white-space: nowrap;
	}
	.timeBtn{
		cursor: pointer;
	}
	
</style>
</head>
 <body>
    <div class="container">
  <header class="blog-header py-3">
    <div class="row flex-nowrap justify-content-between align-items-center">
      <div class="col-4 pt-1">
        <a class="text-muted" href="${pageContext.request.contextPath}/index.jsp">首页</a>
      </div>
      <div class="col-4 text-center">
        <a class="blog-header-logo text-info font-weight-bold text-left" >学无止境</a>
      </div>
      <div class="col-4 d-flex justify-content-end align-items-center">
        <a class="text-muted" href="#">
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="mx-3" role="img" viewBox="0 0 24 24" focusable="false"><title>Search</title><circle cx="10.5" cy="10.5" r="7.5"/><path d="M21 21l-5.2-5.2"/></svg>
        </a>
 		<shiro:guest>
 			<button type="button" class="btn btn-default btn-xs login">登录</button>
 		</shiro:guest>
 		<shiro:user>
 			<span><shiro:principal property="user_name" />&nbsp;&nbsp;<a id="loginOut" style="color: red;cursor: pointer;">注销</a></span>
 		</shiro:user>
      </div>
    </div>
  </header>
  <div class="nav-scroller py-1 mb-2 mt-3">
    <nav class="nav d-flex justify-content-between">
      <button type="button" class="btn btn-success category" data-category="0">技术</button>
      <button type="button" class="btn btn-info category" data-category="1">java</button>
      <button type="button" class="btn btn-info category" data-category="2">mysql</button>
      <button type="button" class="btn btn-info category" data-category="3">生活</button>
      <button type="button" class="btn btn-info category" data-category="4">工作</button>
      <shiro:user>
    	 <button type="button" class="btn btn-info category" data-category="5">私密</button>
    	 <button type="button" class="btn btn-info" id="bkManage">后台管理</button>
      </shiro:user>
    </nav>
  </div>
<main role="main" class="container">
  <div class="row">
    <div class="col-md-8 blog-main">
    <div class="card bg-success text-white font-weight-bold mt-4 mb-3">
   		 <div class="card-body "><h3>文章列表 &nbsp; <span class="small">点击标题查看全文</span></h3></div>
 	 </div>
      <div class="blog-post bg-light " id="articleShow">
     <!--    <h2 class="blog-post-title text-success" >论语·学而篇</h2>
        <p class="blog-post-meta">2019-10-25 by <a href="#">tmx</a></p>
		<p class="article-context">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;子曰：“学而时习之，不亦说乎？有朋自远方来，不亦乐乎？人不知而不愠，不亦君子乎？”<br><br></p>
	  --> </div>
	  
     <!-- <!--  <nav class="blog-pagination">
        <a class="btn btn-outline-primary" href="#">先前文章</a>
        <a class="btn btn-outline-secondary disabled" href="#" tabindex="-1" aria-disabled="true">最新文章</a>
      </nav> -->
    </div>
    <aside class="col-md-4 mt-4 blog-sidebar">
      <div class="p-4  bg-info rounded">
        <h4 class="font-italic">关于</h4>
        <p class="mb-0">这是一个记录日常生活、工作和技术的博客，出于自己的兴趣搭建而成，在做博客的过程中，学习了很多技术，成长了不少，写在这里自勉。</p>
      </div>

      <div class="p-4 bg-warning">
        <h4 class="font-italic">归档</h4>
        <ol class="list-unstyled mb-0  mt-2">
          <li><a class="timeBtn">2019-01</a></li>
          <li><a class="timeBtn">2019-02</a></li>
          <li><a class="timeBtn">2019-03</a></li>
          <li><a class="timeBtn">2019-04</a></li>
          <li><a class="timeBtn">2019-05</a></li>
          <li><a class="timeBtn">2019-06</a></li>
          <li><a class="timeBtn">2019-07</a></li>
          <li><a class="timeBtn">2019-08</a></li>
          <li><a class="timeBtn">2019-09</a></li>
          <li><a class="timeBtn">2019-10</a></li>
          <li><a class="timeBtn">2019-11</a></li>
          <li><a class="timeBtn">2019-12</a></li>
        </ol>
      </div>

      <div class="p-4 bg-white">
        <h4 class="font-italic">链接</h4>
        <ol class="list-unstyled">
          <li><a href="https://v3.bootcss.com" target="_blank">bootstrap中文网</a></li>
          
          <li><a href="https://www.bilibili.com" target="_blank">b站</a></li>
        </ol>
      </div>
    </aside><!-- /.blog-sidebar -->
  </div>
</main>

<footer class="blog-footer">
  <p > 当前日期 </p>
  <p id="datatime"> </p>
  <p>
    <a href="#">返回顶部↑</a>
  </p>
  <div class="inner">
     <p><a href="http://www.beian.miit.gov.cn">桂ICP备19008952号</a></p>
  </div>
</footer>
<script type="text/javascript">
$(function(){
	
	var preUrl = document.referrer;
	getTime();
	loadArticle("getAllArticle?category=0");
	$('.login').click(function(){
		$(window).attr('location','${pageContext.request.contextPath}/readyLogin');
	});
	$('#loginOut').click(function(){
		$(window).attr('location','${pageContext.request.contextPath}/logout');
		
	});
	$('.blog').click(function(){
		$(window).attr('location','${pageContext.request.contextPath}/blog');
	});
	$('#bkManage').click(function(){
		$(window).attr('location','${pageContext.request.contextPath}/bkManage');
	});
	$('.category').click(function(){
		//变化颜色
		$(this).removeClass('btn-info').addClass('btn-success');
		$(this).siblings().removeClass('btn-success').addClass('btn-info');
		//获取分类
		var category= $(this).data("category");
		//先清空所有的内容
		clearArticleList();
		//数据库中查询并展示数据
		loadArticle('getAllArticle?category=' + category );
	});
	$('.timeBtn').click(function(){
		//清空文章列表
		clearArticleList();
		//获取时间日期
		var time = $(this).html();
		//调用查询函数
		//alert('getArticleByTime?time=' + time);
		loadArticle('getArticleByTime?time=' + time );
	});
	function getTime(){
		 	var myDate = new Date;
		    var year = myDate.getFullYear(); //获取当前年
		    var mon = myDate.getMonth() + 1; //获取当前月
		    var date = myDate.getDate(); //获取当前日
		    var h = myDate.getHours();//获取当前小时数(0-23)
		    var m = myDate.getMinutes();//获取当前分钟数(0-59)
		    // var s = myDate.getSeconds();//获取当前秒
		    var week = myDate.getDay();
		    var weeks = ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
		    $("#datatime").html(year + "-" + mon + "-" + date + "&nbsp;      " + weeks[week]);
	}
	/*分类、分时间查询文章*/
	function loadArticle(requestURL){
		$.post('${pageContext.request.contextPath}/' + requestURL,function(data){
			console.log(data);
			var html = '<div>';
			if(data == ""){
				html += '<h3 class="text-danger mt-5">对不起，该分类下没有文章<h3></div>';
				$('#articleShow').append(html);
			}else{
				for(i in data){ 
					html = '<h2 class="blog-post-title text-success" >' + '<a class="small mb-2 text-info font-weight-bold" target="_blank" href="${pageContext.request.contextPath}/showArticleDetails?article_id='+data[i].article_id +'">'+data[i].article_title + '</a>'+'</h2>';
					html += '<p class="blog-post-meta">'+ data[i].article_time + '</p>';
					html += '<div class="article-context">' + data[i].article_context + '</div>' + '<hr style="width:50%;"  align="left">';
					html += '</div>'
					$('#articleShow').append(html);
				}
			}
		})
	}
	function clearArticleList(){
		$('#articleShow').html("");
	}
	
})
</script>
</body>
</html>
