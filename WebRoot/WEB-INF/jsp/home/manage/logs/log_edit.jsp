<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title></title>
		<meta name="description" content="overview & stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="static/css/bootstrap.min.css" rel="stylesheet" />
		<link href="static/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="static/css/font-awesome.min.css" />
		<!-- 下拉框 -->
		<link rel="stylesheet" href="static/css/chosen.css" />
		
		<link rel="stylesheet" href="static/css/ace.min.css" />
		<link rel="stylesheet" href="static/css/ace-responsive.min.css" />
		<link rel="stylesheet" href="static/css/ace-skins.min.css" />
		
		<link rel="stylesheet" href="static/css/datepicker.css" /><!-- 日期框 -->
		<script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		
<script type="text/javascript">
	
	
	//保存
	function save(){
			/* if($("#T_SY_LOG_ID").val()==""){
			$("#T_SY_LOG_ID").tips({
				side:3,
	            msg:'请输入日志ID',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_LOG_ID").focus();
			return false;
		} */
		if($("#T_SY_USERNAME").val()==""){
			$("#T_SY_USERNAME").tips({
				side:3,
	            msg:'请输入用户名',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_USERNAME").focus();
			return false;
		}
		if($("#T_SY_LOGIP").val()==""){
			$("#T_SY_LOGIP").tips({
				side:3,
	            msg:'请输入登录IP',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_LOGIP").focus();
			return false;
		}
		if($("#T_SY_TYPE").val()==""){
			$("#T_SY_TYPE").tips({
				side:3,
	            msg:'请输入操作类型',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_TYPE").focus();
			return false;
		}
		if($("#T_SY_OPERATION").val()==""){
			$("#T_SY_OPERATION").tips({
				side:3,
	            msg:'请输入操作内容',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_OPERATION").focus();
			return false;
		}
		if($("#T_SY_CREATEDATE").val()==""){
			$("#T_SY_CREATEDATE").tips({
				side:3,
	            msg:'请输入创建时间',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_CREATEDATE").focus();
			return false;
		}
		/* if($("#T_SY_BZ1").val()==""){
			$("#T_SY_BZ1").tips({
				side:3,
	            msg:'请输入备用1',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_BZ1").focus();
			return false;
		}
		if($("#T_SY_BZ2").val()==""){
			$("#T_SY_BZ2").tips({
				side:3,
	            msg:'请输入备用2',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_BZ2").focus();
			return false;
		} */
		$("#Form").submit();
		$("#zhongxin").hide();
		$("#zhongxin2").show();
	}
	
</script>
	</head>
<body>
	<form action="logsy/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="T_SY_LOG_ID" id="T_SY_LOG_ID" value="${pd.T_SY_LOG_ID}"/>
		<div id="zhongxin">
		<br/><br/>
		<table align="center">
			<%-- <tr>
				<td><input type="number" name="T_SY_LOG_ID" id="T_SY_LOG_ID" value="${pd.T_SY_LOG_ID}" maxlength="32" placeholder="这里输入日志ID" title="日志ID"/></td>
			</tr> --%>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="T_SY_USERNAME" id="T_SY_USERNAME" value="${pd.T_SY_USERNAME}" maxlength="32" placeholder="这里输入用户名" title="用户名"/></td>
			</tr>
			<tr>
				<td>登录IP：</td>
				<td><input type="text" name="T_SY_LOGIP" id="T_SY_LOGIP" value="${pd.T_SY_LOGIP}" maxlength="32" placeholder="这里输入登录IP" title="登录IP"/></td>
			</tr>
			<tr>
				<td>操作类型：</td>
				<td><input type="number" name="T_SY_TYPE" id="T_SY_TYPE" value="${pd.T_SY_TYPE}" maxlength="32" placeholder="这里输入操作类型" title="操作类型"/></td>
			</tr>
			<tr>
				<td>操作内容：</td>
				<td><textarea name="T_SY_OPERATION" id="T_SY_OPERATION" rows="4" cols="102" placeholder="这里输入操作内容" title="操作内容"> ${pd.T_SY_OPERATION} </textarea>
				<%-- <input type="text" name="T_SY_OPERATION" id="T_SY_OPERATION" value="${pd.T_SY_OPERATION}" maxlength="32" placeholder="这里输入操作内容" title="操作内容"/> --%></td>
			</tr>
			<tr>
				<td></td>
				<td><input class="span10 date-picker" name="T_SY_CREATEDATE" id="T_SY_CREATEDATE" value="${pd.T_SY_CREATEDATE}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="创建时间" title="创建时间"/></td>
			</tr>
			<%-- <tr>
				<td><input type="text" name="T_SY_BZ1" id="T_SY_BZ1" value="${pd.T_SY_BZ1}" maxlength="32" placeholder="这里输入备用1" title="备用1"/></td>
			</tr>
			<tr>
				<td><input type="text" name="T_SY_BZ2" id="T_SY_BZ2" value="${pd.T_SY_BZ2}" maxlength="32" placeholder="这里输入备用2" title="备用2"/></td>
			</tr> --%>
			<tr>
				<td style="text-align: center;" colspan=2>
					<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
					<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
				</td>
			</tr>
		</table>
		</div>
		
		<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
		
	</form>
	
	
		<!-- 引入 -->
		<script type="text/javascript">window.jQuery || document.write("<script src='static/js/jquery-1.9.1.min.js'>\x3C/script>");</script>
		<script src="static/js/bootstrap.min.js"></script>
		<script src="static/js/ace-elements.min.js"></script>
		<script src="static/js/ace.min.js"></script>
		<script type="text/javascript" src="static/js/chosen.jquery.min.js"></script><!-- 下拉框 -->
		<script type="text/javascript" src="static/js/bootstrap-datepicker.min.js"></script><!-- 日期框 -->
		<script type="text/javascript">
		$(top.hangge());
		$(function() {
			
			//单选框
			$(".chzn-select").chosen(); 
			$(".chzn-select-deselect").chosen({allow_single_deselect:true}); 
			
			//日期框
			$('.date-picker').datepicker();
			
		});
		
		</script>
</body>
</html>