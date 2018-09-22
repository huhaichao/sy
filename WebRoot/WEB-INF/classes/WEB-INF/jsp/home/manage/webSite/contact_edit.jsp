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
			/* if($("#T_SY_CONTACT_ID").val()==""){
			$("#T_SY_CONTACT_ID").tips({
				side:3,
	            msg:'请输入ID',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_CONTACT_ID").focus();
			return false;
		} */
		if($("#T_SY_KEY").val()==""){
			$("#T_SY_KEY").tips({
				side:3,
	            msg:'请输入方式名',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_KEY").focus();
			return false;
		}
		if($("#T_SY_VALUE").val()==""){
			$("#T_SY_VALUE").tips({
				side:3,
	            msg:'请输入描述',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_VALUE").focus();
			return false;
		}
		if($("#T_SY_TYPE").val()==""){
			$("#T_SY_TYPE").tips({
				side:3,
	            msg:'请输入类型',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_TYPE").focus();
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
	<form action="contactsy/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="T_SY_CONTACT_ID" id="T_SY_CONTACT_ID" value="${pd.T_SY_CONTACT_ID}"/>
		<div id="zhongxin">
		<br/><br/>
		<table align="center">
			<%-- <tr>
				<td><input type="text" name="T_SY_CONTACT_ID" id="T_SY_CONTACT_ID" value="${pd.T_SY_CONTACT_ID}" maxlength="32" placeholder="这里输入ID" title="ID"/></td>
			</tr> --%>
			<tr>
				<td>方式名：</td>
				<td><input type="text"  style="width:97%;" name="T_SY_KEY" id="T_SY_KEY" value="${pd.T_SY_KEY}" maxlength="32" placeholder="这里输入方式名" title="方式名"/></td>
			</tr>
			<tr>
				<td>方式值：</td>
				<td id="nr">
					<%-- <input type="text" name="T_SY_VALUE" id="T_SY_VALUE" value="${pd.T_SY_VALUE}" maxlength="32" placeholder="这里输入描述" title="描述"/> --%>
					<textarea name="T_SY_VALUE" id="T_SY_VALUE"   style="width:70%;height:300px" placeholder="这里输入描述"  title="描述"> ${pd.T_SY_VALUE} </textarea>
				</td>
			</tr>
			<tr>
				<td>类型：</td>
				<td><%-- <input type="number"  style="width:97%;" name="T_SY_TYPE" id="T_SY_TYPE" value="${pd.T_SY_TYPE}" maxlength="32" placeholder="这里输入类型" title="类型"/> --%>
					<select  name="T_SY_TYPE" id="T_SY_TYPE" title="类型" style="width:100%;">
							<c:forEach items="${varListType}" var="var" varStatus="vs">
								<option value="${var.T_SY_CONVERT_CONTENT }" <c:if test="${var.T_SY_CONVERT_CONTENT == pd.T_SY_TYPE }">selected</c:if> >${var.T_SY_IDENTIFY_CONTENT}</option>
							</c:forEach>
					</select>
				</td>
			</tr>
			<%-- <tr>varListType
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
			UE.getEditor('T_SY_VALUE');
			} 
		setTimeout('reurl()',500);
		</script>
</body>
</html>