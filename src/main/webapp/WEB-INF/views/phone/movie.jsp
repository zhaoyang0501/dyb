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
      <!-- 你的html代码 -->
      <div class="page">
           <%@include file="./header.jsp" %>
         <div class="bar bar-header-secondary">
 	 <form action="searchMovie" method="post">
	  <div class="searchbar">
	    <a class="searchbar-cancel">取消</a>
	    <div class="search-input">
	      <label class="icon icon-search" for="search"></label>
	      <input type="search"  name='key' id='search' placeholder='输入关键字...'/>
	    </div>
	  </div>
   </form>
   
</div> 
          
       <div class="content"> 
		 
		   <div class="list-block media-list" style="margin-top: 2px">
			    <ul>
			    <c:forEach items="${projects }" var="bean">
			    <li>
			        <a href="viewmovie?id=${bean.id }" class="item-link item-content">
			          <div class="item-media"><img src="${bean.img }" style='width: 4rem;'></div>
			          <div class="item-inner">
			            <div class="item-title-row">
			              <div class="item-title">${bean.name }</div>
			              <div class="item-after" style="    color: red;">${bean.price }</div>
			            </div>
			            <div class="item-subtitle">${bean.title1 }</div>
			            <div class="item-text" style="    color: #679c21;">“${bean.title2 }”</div>
			          </div>
			        </a>
			      </li>
			    </c:forEach>
			    </ul>
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
