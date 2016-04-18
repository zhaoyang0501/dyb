<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ch">
<%@ include file="../common/meta.jsp"%>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/ace/admin.guest.js"></script>

 <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/ueditor/lang/zh-cn/zh-cn.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		 var ue = UE.getEditor('context');
		if("${tip}" != null && "${tip}" != ""){
			noty({"text":"${tip}","layout":"top","type":"success","timeout":"2000"});
		}
		$(".date").datetimepicker({
			language:  'zh-CN',
	        weekStart: 1,
	        todayBtn:  1,
	        format:'yyyy-mm-dd',
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
	    });
	});
</script>
</head>
<body>
	<div class="layout">
		<!-- top -->
		<%@ include file="../top.jsp"%>
		<!-- 导航 -->
		<%@ include file="../menu.jsp"%>
		
		<input type="hidden" id="hf_id" />

		<div class="main-wrapper">
			<div class="container-fluid">
				<div class="row-fluid ">
					<div class="span12">
						<div class="content-widgets light-gray">
							<div class="widget-head  bondi-blue" >
								<h3>商家登记</h3>
							</div>
							
							<div class="widget-container">
								
							<form action="${pageContext.request.contextPath}/admin/seller/create" enctype="multipart/form-data" method="post">
							<div class="control-group">
								<label for="title" class="control-label">用户名：</label>
								<div class="controls">
									<input type="text" name='username' id="username" placeholder="">
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">密码：</label>
								<div class="controls">
									<input type="text"  name='password' id="password" placeholder="">
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">商家全称：</label>
								<div class="controls">
									<input type="text" name='name' id="name" placeholder="">
								</div>
							</div>
							
							<div class="control-group">
								<label for="title" class="control-label">商家地址：</label>
								<div class="controls">
									<input type="text" name='address' id=address placeholder="">
								</div>
							</div>
							
							<div class="control-group">
								<label for="title" class="control-label">商家电话：</label>
								<div class="controls">
									<input type="text" name='tel' id=tel placeholder="">
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">营业执照：</label>
								<div class="controls">
									<input type="text" name='grade' id=grade placeholder="">
								</div>
							</div>
							
							<div class="control-group">
								<label for="title" class="control-label">平均配送时间：</label>
								<div class="controls">
									<input type="text" name='sendtime' id=sendtime placeholder="">
								</div>
							</div>
							
							<div class="control-group">
								<label for="title" class="control-label">起送价：</label>
								<div class="controls">
									<input type="text" name='lowprice' id=lowprice placeholder="">
								</div>
							</div>
							
							<div class="control-group">
								<label for="title" class="control-label">配送费：</label>
								<div class="controls">
									<input type="text" name='sendprice' id=sendprice placeholder="">
								</div>
							</div>
							
							<div class="control-group">
								<label for="title" class="control-label">分类：</label>
								<div class="controls">
									<select name='category.id'>
										<c:forEach var="bean" items="${categorys}">
											<option value="${bean.id }">${bean.name }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">商家评分：</label>
								<div class="controls">
									<input type="text" name='score' id=sendprice placeholder="">
								</div>
							</div>
							
							<div class="control-group">
								<label for="title" class="control-label">商家图标：</label>
								<div class="controls">
									<input type="file" name='file' id=file placeholder="">
								</div>
							</div>
							
							<div class="control-group">
								<label for="title" class="control-label">介绍：</label>
								<div class="controls">
									<textarea  id='context' name='remark' style="width: 100%;height: 600px"></textarea>
								</div>
							</div>
								<div class="modal-footer center" id="div_footer">
									<button type="submit" class='btn btn-primary'>发布</button>
								</div>
						</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../foot.jsp"%>
	</div>
</body>
</html>