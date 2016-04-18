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
			
<section id="grid" style="margin-top: 5px">
 <div class="demo-item">
        <p class="demo-desc">关于我们</p>
        <div class="demo-block">
            <ul class="ui-list ui-list-text ui-list-link ui-border-tb">
                 <li class="ui-border-t">
                    <h4>关于我们</h4>
               </li>
                 <li class="ui-border-t">
                    <h4>开发者信息</h4>
                </li>
                <li class="ui-border-t">
                    <h4>支付问题</h4>
                </li>
                <li class="ui-border-t">
                    <h4>余额问题</h4>
                </li>
                 <li class="ui-border-t">
                    <h4>会员问题</h4>
               </li>
                 <li class="ui-border-t">
                    <h4>注册问题</h4>
                </li>
                <li class="ui-border-t">
                    <h4>活动管理</h4>
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