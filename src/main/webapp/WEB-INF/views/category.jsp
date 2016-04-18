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
		
<section id="searchbar">
    <div class="demo-item">
        <div class="demo-block">
            <div  class="ui-searchbar-wrap ui-border-b">
                <div class="ui-searchbar ui-border-radius">
                    <i class="ui-icon-search"></i>
                    <div class="ui-searchbar-text">搜索</div>
                    <div class="ui-searchbar-input"><input value="" type="text" placeholder="搜索" ></div>
                    <i class="ui-icon-close"></i>
                </div>
                <button class="ui-searchbar-cancel">取消</button>
            </div>
            <script src="http://i.gtimg.cn/vipstyle/frozenjs/1.0.1/frozen.js?_bid=304"></script>
            <script src="js/frozen.js"></script>
            <script type="text/javascript">
                $('.ui-searchbar').tap(function(){
                    $('.ui-searchbar-wrap').addClass('focus');
                    $('.ui-searchbar-input input').focus();
                });
                $('.ui-searchbar-cancel').tap(function(){
                    $('.ui-searchbar-wrap').removeClass('focus');
                });
            </script>
        </div>
    </div>
</section>
			<section id="grid" style="margin-top: 5px">
			 <div class="demo-item">
			        <div class="demo-block">
			            <ul class="ui-list ui-border-tb">
			            
			            	<c:forEach var="bean" items="${sellers}">
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