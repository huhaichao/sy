<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<!-- jsp文件头和头部 -->
<%@ include file="../admin/top.jsp"%>
</head>
<body>
	<div class="container-fluid" id="main-container">
		<div id="page-content" class="clearfix">
			<div class="row-fluid">
				<div class="row-fluid">
					<table style="width: 100%" border="0" cellspacing="10" cellpadding="0">
						<tr>
							<td width="10%" valign="top">
								<h4>上传头像</h4>
								<table style="width: 100%" class="insert-tab">
									<tbody>
										<tr>
											<td>
												<div id="result"></div> <img id="uploadImage"
												src="http://www.firefox.com.cn/favicon.ico" height="150px"
												width="150px" border="1"> <br> <input type="file"
												id="myBlogImage" name="myfiles" /> <input type="button"
												value="上传图片" onclick="upload()" />
											</td>
										</tr>

									</tbody>
								</table> <br> <br>

								<h4>基本信息维护</h4>
								<form action="save" method="post">
									<table class="insert-tab" style="width: 100%">
										<tbody>
											<tr>
												<th width="15%"><i class="require-red">*</i>用户名：</th>
												<td><input type="text" size="20" name="user_id"
													class="common-text"></td>
											</tr>
											<tr>
												<th><i class="require-red">*</i>密码：</th>
												<td><input type="password" size="20" name="password"
													class="common-text"></td>
											</tr>
											<tr>
												<th><i class="require-red">*</i>姓名：</th>
												<td><input type="text" size="20" name="name"
													class="common-text"></td>
											</tr>
											<tr>
												<th><i class="require-red">*</i>角色ID：</th>
												<td><input type="text" size="20" name="roleid"
													class="common-text"></td>
											</tr>
											<tr>
												<th></th>
												<td><input type="submit" value="提交"
													class="btn btn-primary btn6 mr10"> <input
													type="button" value="返回" onclick="history.go(-1)"
													class="btn btn6"></td>
											</tr>
										</tbody>
									</table>
								</form>
							</td>
						</tr>
					</table>
				</div>
				<!-- PAGE CONTENT ENDS HERE -->
			</div>
			<!--/row-->
		</div>
		<!--/#page-content-->
	</div>
	<!--/.fluid-container#main-container-->
	<!-- 返回顶部  -->
	<a href="#" id="btn-scroll-up" class="btn btn-small btn-inverse"> <i
		class="icon-double-angle-up icon-only"></i>
	</a>
	<!-- 引入 -->
	<script type="text/javascript">window.jQuery || document.write("<script src='static/js/jquery-1.9.1.min.js'>\x3C/script>");</script>
	<script src="static/js/bootstrap.min.js"></script>
	<script src="static/js/ace-elements.min.js"></script>
	<script src="static/js/ace.min.js"></script>

	<script type="text/javascript" src="static/js/chosen.jquery.min.js"></script>
	<!-- 下拉框 -->
	<script type="text/javascript"
		src="static/js/bootstrap-datepicker.min.js"></script>
	<!-- 日期框 -->
	<script type="text/javascript" src="static/js/bootbox.min.js"></script>
	<!-- 确认窗口 -->
	<!-- 引入 -->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
	
	<script type="text/javascript">
		$(top.hangge());
	</script>
</body>
</html>

