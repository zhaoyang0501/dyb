<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>我的生活</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="/favicon.ico">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <link rel="stylesheet" href="//g.alicdn.com/msui/sm/0.6.2/css/sm.min.css">
	<script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
	<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm.min.js' charset='utf-8'></script>
	<link rel="stylesheet" href="//g.alicdn.com/msui/sm/0.6.2/css/??sm.min.css,sm-extend.min.css">
	<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/??sm.min.js,sm-extend.min.js' charset='utf-8'></script>
    <link rel="stylesheet" href="//g.alicdn.com/msui/sm/0.6.2/css/sm-extend.min.css">
    <script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm-extend.min.js' charset='utf-8'></script>
  </head>
  <body>

  <div class="page-group">
      <div class="page">
       <%@include file="./header.jsp" %>
       <div class="content">
		  <!-- Slider -->
		  <div class="swiper-container" data-space-between='10'>
		    <div class="swiper-wrapper">
		      <div class="swiper-slide"><img width="100%" src="http://img31.mtime.cn/mg/2016/03/18/115924.94184794_270X405X4.jpg" alt=""></div>
		      <div class="swiper-slide"><img width="100%" src="http://img31.mtime.cn/mg/2016/01/28/092553.55103474_270X405X4.jpg" alt=""></div>
		      <div class="swiper-slide"><img width="100%"  src="http://img31.mtime.cn/mg/2016/03/18/115924.94184794_270X405X4.jpg" alt=""></div>
		    </div>
		    <div class="swiper-pagination"></div>
		  </div>
		</div>
      </div>
  </div>

     <script>
     $(function() {
    	  $(".swiper-container").swiper({
    		  pagination: '.swiper-pagination',
    	        paginationClickable: true,
    	        direction: 'vertical'
    	    });
    	});
    </script>
  </body>
</html>
