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
			if($("#T_SY_MAIN_TITLE").val()==""){
			$("#T_SY_MAIN_TITLE").tips({
				side:3,
	            msg:'请输入主标题',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_MAIN_TITLE").focus();
			return false;
		}
		if($("#T_SY_SUB_TITLE").val()==""){
			$("#T_SY_SUB_TITLE").tips({
				side:3,
	            msg:'请输入副标题',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_SUB_TITLE").focus();
			return false;
		}
		if($("#T_SY_NAME").val()==""){
			$("#T_SY_NAME").tips({
				side:3,
	            msg:'请输入图片名称',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_NAME").focus();
			return false;
		}
		if($("#T_SY_PATH").val()==""){
			$("#T_SY_PATH").tips({
				side:3,
	            msg:'请输入图片路径',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_PATH").focus();
			return false;
		}
		if($("#T_SY_LINK_PATH").val()==""){
			$("#T_SY_LINK_PATH").tips({
				side:3,
	            msg:'请输入链接地址',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_LINK_PATH").focus();
			return false;
		}
		if($("#T_SY_DESC").val()==""){
			$("#T_SY_DESC").tips({
				side:3,
	            msg:'请输入描述',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_DESC").focus();
			return false;
		}
		if($("#T_SY_DATE").val()==""){
			$("#T_SY_DATE").tips({
				side:3,
	            msg:'请输入创建日期',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_DATE").focus();
			return false;
		}
		/* if($("#T_SY_BZ1").val()==""){
			$("#T_SY_BZ1").tips({
				side:3,
	            msg:'请输入备注1',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_BZ1").focus();
			return false;
		}
		if($("#T_SY_BZ2").val()==""){
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
	<form action="noticesy/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="T_SY_NOTICE_ID" id="T_SY_NOTICE_ID" value="${pd.T_SY_NOTICE_ID}"/>
		<div id="zhongxin">
		<br/><br/>
		<table align="center">
			<tr>
				<td>主标题：</td>
				<td><input type="text" style="width:97%;"  name="T_SY_MAIN_TITLE" id="T_SY_MAIN_TITLE" value="${pd.T_SY_MAIN_TITLE}" maxlength="32" placeholder="这里输入主标题" title="主标题"/></td>
			</tr>
			<tr>
				<td>副标题：</td>
				<td><input type="text" style="width:97%;"  name="T_SY_SUB_TITLE" id="T_SY_SUB_TITLE" value="${pd.T_SY_SUB_TITLE}" maxlength="32" placeholder="这里输入副标题" title="副标题"/></td>
			</tr>
			<tr>
				<td>图片名称：</td>
				<td><input type="text" style="width:97%;"  name="T_SY_NAME" id="T_SY_NAME" value="${pd.T_SY_NAME}" maxlength="32" placeholder="这里输入图片名称" title="图片名称"/></td>
			</tr>
			<tr>
				<td>图片路径：</td>
				<td><input type="text" style="width:97%;"  name="T_SY_PATH" id="T_SY_PATH" value="${pd.T_SY_PATH}" maxlength="32" placeholder="这里输入图片路径" title="图片路径"/></td>
			</tr>
			<tr>
				<td>链接地址：</td>
				<td><input type="text" style="width:97%;"  name="T_SY_LINK_PATH" id="T_SY_LINK_PATH" value="${pd.T_SY_LINK_PATH}" maxlength="32" placeholder="这里输入链接地址" title="链接地址"/></td>
			</tr>
			<tr>
				<td>创建日期：</td>
				<td><input style="width:100%;"  class="span10 date-picker" name="T_SY_DATE" id="T_SY_DATE" value="${pd.T_SY_DATE}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="创建日期" title="创建日期"/></td>
			</tr>
			<tr>
				<td>描述：</td>
				<td id="nr"><%-- <input type="text" name="T_SY_DESC" id="T_SY_DESC" value="${pd.T_SY_DESC}" maxlength="32" placeholder="这里输入描述" title="描述"/> --%>
					<textarea name="T_SY_DESC" id="T_SY_DESC" style="width:70%;height:300px" placeholder="这里输入描述" title="描述"> ${pd.T_SY_DESC} </textarea>
				</td>
			</tr>
			<%-- <tr>
				<td><input type="text" name="T_SY_BZ1" id="T_SY_BZ1" value="${pd.T_SY_BZ1}" maxlength="32" placeholder="这里输入备注1" title="备注1"/></td>
			</tr>
			<tr>
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
		<!-- 编辑框-->
		<script type="text/javascript" charset="utf-8">window.UEDITOR_HOME_URL = "<%=path%>/plugins/ueditor/";</script>
		<script type="text/javascript" charset="utf-8" src="plugins/ueditor/ueditor.config.js"></script>
		<script type="text/javascript" charset="utf-8" src="plugins/ueditor/ueditor.all.js"></script>
		<!-- 编辑框-->
		<script type="text/javascript">
		$(top.hangge());
		$(function() {
			
			//单选框
			$(".chzn-select").chosen(); 
			$(".chzn-select-deselect").chosen({allow_single_deselect:true}); 
			
			//日期框
			$('.date-picker').datepicker();
			
		});
		function reurl(){ 
			UE.getEditor('T_SY_DESC');
			} 
		setTimeout('reurl()',500);
		</script>
</body>
</html>