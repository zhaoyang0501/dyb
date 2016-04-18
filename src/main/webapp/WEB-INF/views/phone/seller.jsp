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
        <script src="../lib/zepto.min.js"></script>
        <script src="../js/frozen.js"></script>
         <script type='text/javascript' src='http://libs.useso.com/js/jquery/1.7.2/jquery.min.js'></script>
       
        <link rel="stylesheet" href="http://www.helloweba.com/demo/spinner/spinner/jquery.spinner.css" />
	  <script type="text/javascript" src="http://www.helloweba.com/demo/spinner/spinner/jquery.spinner.js"></script>
        <style type="text/css">
        .spinner {
           padding-top: 5px;
    float: left;
    margin-right: 14px;
}
        </style>
    </head>
    
    <body ontouchstart>
        <header class="ui-header ui-header-positive ui-border-b">
            <i class="ui-icon-return" onclick="history.back()"></i><h1>快叫外卖吧！ </h1><button data-href="${pageContext.request.contextPath}/phone/docart" class="ui-btn">去结算</button>
        </header>
        <footer class="ui-footer ui-footer-btn">
            <ul class="ui-tiled ui-border-t">
                <li data-href="${pageContext.request.contextPath}/phone/index" class="ui-border-r"><div>首页</div></li>
                <li data-href="${pageContext.request.contextPath}/phone/category" class="ui-border-r"><div>订单</div></li>
                <li data-href="${pageContext.request.contextPath}/phone/center"><div>我的</div></li>
                <li data-href="${pageContext.request.contextPath}/phone/"><div>更多</div></li>
            </ul>
        </footer>
			  <section class="ui-container">
			    <div class="ui-tooltips ui-tooltips-guide"  style="display: none;">
	                <div class="ui-tooltips-cnt ui-border-b">
	                    <i></i>加入购物车成功！<a class="ui-icon-close"></a>
	                </div>
               </div>
			        <section class="ui-container ui-center" style="background-color: #18b4ed;">
              			<div class="ui-avatar">
                       		 <span  style="background-image:url(${pageContext.request.contextPath}/upload/${seller.icon })"></span>
                   		 </div>
                   		${seller.name }
           			 </section>
           			 

           			<section id="tab">
						<div class="demo-item">
							<div class="demo-block">
								<div class="ui-tab">
								    <ul class="ui-tab-nav ui-border-b">
								        <li class="current">商品</li>
								        <li>商家</li>
								    </ul>
								    <ul class="ui-tab-content" style="width:300%">
								        <li>
								        	 <ul class="ui-list ui-border-tb">
								        	 	<c:forEach items="${projects }" var="bean">
									        	 	 <li class="ui-border-t">
										                    <div class="ui-avatar">
										                        <span style="background-image:url(${pageContext.request.contextPath}/upload/food/${bean.icon})"></span>
										                    </div>
										                    <div class="ui-list-info">
										                          
										                           <h4 class="ui-nowrap">${bean.name } <p style="float: right;color: orange;" class="ui-txt-warning"><input type="text" class="spinner" /> <button class="ui-btn ui-btn-primary" onclick="fun_addtocart(${bean.id})"> 加入 </button></p></h4>
										               	 
										                        <p class="ui-nowrap">${bean.title }</p>
										                        <div >
										                     	<span style="color: red">￥${bean.price }</span>/份
										                       </div>
										                    </div>
										                </li>
								        	 	</c:forEach>
								        	 
									            </ul>
								        </li>
								        <li>
								        
								         <div class="demo-item">
										        <div class="demo-block">
										            <ul class="ui-list ui-list-pure ui-border-tb">
										                <li class="ui-border-t">
										                    <h4>地址：${seller.address }</h4>
										                </li>
										                <li class="ui-border-t">
										                    <h4>电话：${seller.tel }</h4>
										                </li>
										                <li class="ui-border-t">
										                    <h4>平均配送时间：${seller.sendtime }</h4>
										                </li>
										                
										                 <li class="ui-border-t">
										                    <h4>起送价：${seller.lowprice }</h4>
										                </li>
										                <li class="ui-border-t">
										                    <h4>配送价：${seller.sendprice }</h4>
										                </li>
										            </ul>
										        </div>
										    </div>
								        </li>
								    </ul>
								</div>
							</div>
						</div>
						
					<script class="demo-script">
							(function (){
					            var tab = new fz.Scroll('.ui-tab', {
							        role: 'tab',
							        autoplay: false,
							        interval: 3000
							    });
							    /* 滑动开始前 */
							    tab.on('beforeScrollStart', function(fromIndex, toIndex) {
							        console.log(fromIndex,toIndex);// from 为当前页，to 为下一页
							    })
							})();
        			</script>
		       </section>

            
        </section><!-- /.ui-container-->
        <script>
        $('.spinner').spinner();

        $('.ui-list li,.ui-tiled li').click(function(){
            if($(this).data('href')){
                location.href= $(this).data('href');
            }
        });
        $('.ui-header .ui-btn').click(function(){
            location.href= 'docart';
        });
        
        function fun_addtocart(id){
        	$.ajax({
    			type : "get",
    			url : "${pageContext.request.contextPath}/phone/cart?pid="+id,
    			dataType : "json",
    			success : function(json) {
    				$(".ui-tooltips-guide").show(300);
    				setTimeout( " $('.ui-tooltips-guide').hide()" , 1000 );
    			}
    		});
        }
        </script>
    </body>
</html>