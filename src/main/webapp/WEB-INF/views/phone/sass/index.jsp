<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta name="format-detection" content="telephone=no">
        <title>FrozenUI Demo</title>
        <script type="text/javascript" src="http://tajs.qq.com/stats?sId=37342703" charset="UTF-8"></script>
        <link rel="stylesheet" href="../css/frozen.css">
        <link rel="stylesheet" href="demo.css">
        <script src="../lib/zepto.min.js"></script>
        <script src="../js/frozen.js"></script>
    </head>
    
    <body ontouchstart>
  	<%@include file="./header.jsp" %>
       <section class="ui-container">
			<section id="slider">
			    <div class="demo-item">
			        <div class="demo-block">
			            <div class="ui-slider">
			                <ul class="ui-slider-content" style="width: 300%">
			                    <li><span style="background-image:url(${pageContext.request.contextPath}/img/802.jpg)"></span></li>
			                   <li><span style="background-image:url(${pageContext.request.contextPath}/img/bg501.jpg)"></span></li>
			                </ul>
			            </div>
			        </div>
			        <script class="demo-script">
			        (function (){
			            var slider = new fz.Scroll('.ui-slider', {
			                role: 'slider',
			                indicator: true,
			                autoplay: true,
			                interval: 3000
			            });
			
			            slider.on('beforeScrollStart', function(fromIndex, toIndex) {
			                console.log(fromIndex,toIndex)
			            });
			
			            slider.on('scrollEnd', function(cruPage) {
			                console.log(cruPage)
			            });
			        })();
			        </script>
			    </div>
			</section>

			
<section id="grid" style="margin-top: 5px">
    <div class="demo-item">
        <div class="demo-block">
        
         <div class="ui-row-flex ui-whitespace">
               	  <div class="ui-col ui-col" style="text-align: center;">
               	 <a href="${pageContext.request.contextPath}/phone/category?id=1" class="weui_grid js_grid" data-id="button">
	                <div class="weui_grid_icon">
	                    <img src="${pageContext.request.contextPath}/img/category/c11.png" alt="">
	                </div>
	                <p class="weui_grid_label">
	                 		   火锅
	                </p>
              	 </a>
               </div>
               
              	  <div class="ui-col ui-col" style="text-align: center;">
                 <a href="${pageContext.request.contextPath}/phone/category?id=2" class="weui_grid js_grid" data-id="button">
	                <div class="weui_grid_icon">
	                    <img src="${pageContext.request.contextPath}/img/category/c12.png" alt="">
	                </div>
	                <p class="weui_grid_label">
	                 		   鲜果蔬菜
	                </p>
              	 </a>
              	 </div>
               
               
               	  <div class="ui-col ui-col" style="text-align: center;">
                 <a href="${pageContext.request.contextPath}/phone/category?id=3"  class="weui_grid js_grid" data-id="button">
	                <div class="weui_grid_icon">
	                    <img src="${pageContext.request.contextPath}/img/category/c3.png" alt="">
	                </div>
	                <p class="weui_grid_label">
	                 		   超市
	                </p>
              	 </a>
              	 </div>
              	 
              	 
              	 
              	  <div class="ui-col ui-col" style="text-align: center;">
                 <a href="${pageContext.request.contextPath}/phone/category?id=4"   class="weui_grid js_grid" data-id="button">
	                <div class="weui_grid_icon">
	                    <img src="${pageContext.request.contextPath}/img/category/c4.png" alt="">
	                </div>
	                <p class="weui_grid_label">
	                 		   土豪管
	                </p>
              	 </a>
              	 </div>
            </div>
            <div class="ui-row-flex ui-whitespace">
               	  <div class="ui-col ui-col" style="text-align: center;">
               	 <a href="${pageContext.request.contextPath}/phone/category?id=5"   class="weui_grid js_grid" data-id="button">
	                <div class="weui_grid_icon">
	                    <img src="${pageContext.request.contextPath}/img/category/c1.png" alt="">
	                </div>
	                <p class="weui_grid_label">
	                 		  甜饼甜点
	                </p>
              	 </a>
               </div>
               
              	  <div class="ui-col ui-col" style="text-align: center;">
                 <a href="${pageContext.request.contextPath}/phone/category?id=6"  class="weui_grid js_grid" data-id="button">
	                <div class="weui_grid_icon">
	                    <img src="${pageContext.request.contextPath}/img/category/c2.png" alt="">
	                </div>
	                <p class="weui_grid_label">
	                 		  鲜花蛋糕
	                </p>
              	 </a>
              	 </div>
               
               
               	  <div class="ui-col ui-col" style="text-align: center;">
                 <a href="${pageContext.request.contextPath}/phone/category?id=7"  class="weui_grid js_grid" data-id="button">
	                <div class="weui_grid_icon">
	                    <img src="${pageContext.request.contextPath}/img/category/c6.png" alt="">
	                </div>
	                <p class="weui_grid_label">
	                 		   外卖
	                </p>
              	 </a>
              	 </div>
              	 
              	 
              	 
              	  <div class="ui-col ui-col" style="text-align: center;">
                 <a href="${pageContext.request.contextPath}/phone/category?id=8"  class="weui_grid js_grid" data-id="button">
	                <div class="weui_grid_icon">
	                    <img src="${pageContext.request.contextPath}/img/category/c7.png" alt="">
	                </div>
	                <p class="weui_grid_label">
	                 		   夜宵
	                </p>
              	 </a>
              	 </div>
            </div>
    </div>
    </div>
    </section>
<section id="grid" style="margin-top: 5px">
 <div class="demo-item">
        <p class="demo-desc">为您推荐</p>
        <div class="demo-block">
            <ul class="ui-list ui-border-tb">
            
            
            	<c:forEach var="bean" items="${likes}">
            	 <li class="ui-border-t"  data-href="${pageContext.request.contextPath}/phone/seller?id=${bean.id}">
                    <div class="ui-avatar">
                        <span style="background-image:url(${pageContext.request.contextPath}/upload/${bean.icon })"></span>
                    </div>
                    <div class="ui-list-info">
                        <h4 class="ui-nowrap">${bean.name } <p style="float: right;color: orange;" class="ui-txt-warning">${bean.score }分</p></h4>
                        <p class="ui-nowrap">${bean.remark }</p>
                        <p class="ui-nowrap">起送价${bean.lowprice }|配送费${bean.sendprice }|${bean.sendtime }分钟送达</p>
                    </div>
                </li>
            	</c:forEach>
            
               
                <li  class="ui-border-t">
                    <div class="ui-avatar">
                           <span style="background-image:url(${pageContext.request.contextPath}/img/food/food1.png)"></span>
                    </div>
                    <div class="ui-list-info">
                        <h4 class="ui-nowrap">战斗鸡排 <p style="float: right;color: orange;" class="ui-txt-warning">4.4分</p></h4>
                        <p class="ui-nowrap">满100送饮料</p>
                        <p class="ui-nowrap">起送价25|配送费0|43分钟送达</p>
                    </div>
                </li>
                
                 <li  class="ui-border-t">
                    <div class="ui-avatar">
                           <span style="background-image:url(${pageContext.request.contextPath}/img/food/food1.png)"></span>
                    </div>
                    <div class="ui-list-info">
                        <h4 class="ui-nowrap">外婆家酸菜鱼 <p style="float: right;color: orange;" class="ui-txt-warning">4.4分</p></h4>
                        <p class="ui-nowrap">满100送汤</p>
                        <p class="ui-nowrap">起送价25|配送费0|23分钟送达</p>
                    </div>
                </li>
                
                <li  class="ui-border-t">
                    <div class="ui-avatar">
                           <span style="background-image:url(${pageContext.request.contextPath}/img/food/food1.png)"></span>
                    </div>
                    <div class="ui-list-info">
                        <h4 class="ui-nowrap">KFC <p style="float: right;color: orange;" class="ui-txt-warning">4.4分</p></h4>
                        <p class="ui-nowrap">满100送优惠券</p>
                        <p class="ui-nowrap">起送价25|配送费0|23分钟送达</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</section>

        </section><!-- /.ui-container-->
        <script>
        $('.ui-list li,.ui-tiled li').click(function(){
            if($(this).data('href')){
                location.href= $(this).data('href');
            }
        });
        $('.ui-header .ui-btn').click(function(){
            location.href= 'index.html';
        });
        </script>
    </body>
</html>