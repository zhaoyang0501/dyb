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
       
        <div class="card facebook-card" style="margin: 0px">
    <div class="card-header no-border">
      <div class="facebook-name">欢迎您：${user.name }</div>
     
    </div>
    <div class="card-content" ><img style="text-align: center;" src="http://gqianniu.alicdn.com/bao/uploaded/i4//tfscom/i3/TB10LfcHFXXXXXKXpXXXXXXXXXX_!!0-item_pic.jpg_250x250q60.jpg" width="40%"></div>
    <div class="card-footer no-border">
      <a href="#" class="link">金币：0</a>
      <a href="#" class="link">积分：0</a>
      <a href="#" class="link">评论：30</a>
    </div>
  </div>
       
		  <div class="list-block">
			    <ul>
			      <li class="item-content item-link">
			        <div class="item-media"><i class="icon icon-f7"></i></div>
			        <div class="item-inner">
			          <div class="item-title">我的资料</div>
			        </div>
			      </li>
			      <li class="item-content item-link">
			        <div class="item-media"><i class="icon icon-f7"></i></div>
			        <div class="item-inner">
			          <div class="item-title">注销</div>
			        </div>
			      </li>
			    </ul>
			  </div>
		</div>
      </div>
  </div>

   
  </body>
</html>
