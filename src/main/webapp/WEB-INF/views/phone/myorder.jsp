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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/frozen.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/demo.css">
        <script src="${pageContext.request.contextPath}/lib/zepto.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/frozen.js"></script>
    </head>
    
    <body ontouchstart>
       	<%@include file="./header.jsp" %>
         <section class="ui-container">
			

<section id="tab">
	<div class="demo-item">
		<div class="demo-block">
		 <c:if test="${tip!=null }">
        <div class="ui-tooltips ui-tooltips-warn">
                <div class="ui-tooltips-cnt ui-tooltips-cnt-link ui-border-b">
                    <i></i>${tip }
                </div>
            </div>
        </c:if>
			<div class="ui-tab">
			    <ul class="ui-tab-nav ui-border-b">
			        <li class="current">未完成</li>
			        <li>已完成</li>
			    </ul>
			    <ul class="ui-tab-content" style="width:300%">
			        <li>
			       		 <div class="demo-block">
				               <ul class="ui-list ui-border-tb">
				            	<c:forEach items="${ordertodo}" var="bean">
				            		<li  class="ui-border-t">
					                    <div class="ui-list-thumb">
					                           <span style="background-image:url(${pageContext.request.contextPath}/upload/food/${bean.items[0].project.icon})"></span>
					                    </div>
					                    <div class="ui-list-info">
					                        <h4 class="ui-nowrap">${bean.items[0].project.seller.name } <p style="float: right;color: orange;" class="ui-txt-warning">${bean.state }</p></h4>
					                        <p class="ui-nowrap">下单日期：${bean.orderDate }</p>
					                        <p class="ui-nowrap">总价：${bean.toalprice }</p>
					                    </div>
					                </li>
				            	</c:forEach>
							     </ul>
			     	   </div>   
			        
			        </li>
			       
			        <li>
			             <ul class="ui-list ui-border-tb">
				            	<c:forEach items="${orderdone}" var="bean">
				            		<li  class="ui-border-t">
					                    <div class="ui-list-thumb">
					                           <span style="background-image:url(${pageContext.request.contextPath}/upload/food/${bean.items[0].project.icon})"></span>
					                    </div>
					                    <div class="ui-list-info">
					                        <h4 class="ui-nowrap">${bean.items[0].project.name } <p style="float: right;color: orange;" class="ui-txt-warning">${bean.state }</p></h4>
					                        <p class="ui-nowrap">下单日期：${bean.orderDate }</p>
					                        <p class="ui-nowrap">总价：${bean.toalprice }</p>
					                    </div>
					                </li>
				            	</c:forEach>
							     </ul>
			        </li>
			    </ul>
			</div>
		</div>
		<script class="demo-script">
		(function (){
            var tab = new fz.Scroll('.ui-tab', {
		        role: 'tab',
		        autoplay: false,
		        interval: 3000
		    });
		})();
        </script>
	</div>
</section>


		</section>
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