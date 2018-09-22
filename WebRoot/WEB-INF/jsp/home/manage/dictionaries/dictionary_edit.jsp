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
			/* if($("#T_SY_DICTIONARY_ID").val()==""){
			$("#T_SY_DICTIONARY_ID").tips({
				side:3,
	            msg:'请输入字典ID',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_DICTIONARY_ID").focus();
			return false;
		} */
		if($("#T_SY_DICTIONARY_TYPE").val()==""){
			$("#T_SY_DICTIONARY_TYPE").tips({
				side:3,
	            msg:'请输入字典类型',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_DICTIONARY_TYPE").focus();
			return false;
		}
		if($("#T_SY_IDENTIFY_CONTENT").val()==""){
			$("#T_SY_IDENTIFY_CONTENT").tips({
				side:3,
	            msg:'请输入标识内容',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_IDENTIFY_CONTENT").focus();
			return false;
		}
		if($("#T_SY_CONVERT_CONTENT").val()==""){
			$("#T_SY_CONVERT_CONTENT").tips({
				side:3,
	            msg:'请输入转换内容',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_CONVERT_CONTENT").focus();
			return false;
		}
		if($("#T_SY_BZ1").val()==""){
			$("#T_SY_BZ1").tips({
				side:3,
	            msg:'请输入备注',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_BZ1").focus();
			return false;
		}
		/* if($("#T_SY_BZ2").val()==""){
			$("#T_SY_BZ2").tips({
				side:3,
	            msg:'请输入备注2',
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
	<form action="dictionarysy/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="T_SY_DICTIONARY_ID" id="T_SY_DICTIONARY_ID" value="${pd.T_SY_DICTIONARY_ID}"/>
		<div id="zhongxin">
		<br/><br/>
		<table align=center>
			<%-- <tr>
				<td><input type="text" name="T_SY_DICTIONARY_ID" id="T_SY_DICTIONARY_ID" value="${pd.T_SY_DICTIONARY_ID}" maxlength="32" placeholder="这里输入字典ID" title="字典ID"/></td>
			</tr> --%>
			<tr>
				<td>字典类型：</td>
				<td><input type="text" name="T_SY_DICTIONARY_TYPE" id="T_SY_DICTIONARY_TYPE" value="${pd.T_SY_DICTIONARY_TYPE}" maxlength="32" placeholder="这里输入字典类型" title="字典类型"/></td>
			</tr>
			<tr>
				<td>标识内容：</td>
				<td><input type="text" name="T_SY_IDENTIFY_CONTENT" id="T_SY_IDENTIFY_CONTENT" value="${pd.T_SY_IDENTIFY_CONTENT}" maxlength="32" placeholder="这里输入标识内容" title="标识内容"/></td>
			</tr>
			<tr>
				<td>转换内容：</td>
				<td><input type="text" name="T_SY_CONVERT_CONTENT" id="T_SY_CONVERT_CONTENT" value="${pd.T_SY_CONVERT_CONTENT}" maxlength="32" placeholder="这里输入转换内容" title="转换内容"/></td>
			</tr>
			<tr>
				<td>备注：</td>
				<td><input type="text" name="T_SY_BZ1" id="T_SY_BZ1" value="${pd.T_SY_BZ1}" maxlength="32" placeholder="这里输入备注" title="备注"/></td>
			</tr>
			<%-- <tr>
				<td><input type="text" name="T_SY_BZ2" id="T_SY_BZ2" value="${pd.T_SY_BZ2}" maxlength="32" placeholder="这里输入备注2" title="备注2"/></td>
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