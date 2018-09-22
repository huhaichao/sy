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
			/* if($("#T_SY_MENU_ID").val()==""){
			$("#T_SY_MENU_ID").tips({
				side:3,
	            msg:'请输入主键',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_MENU_ID").focus();
			return false;
		} */
		if($("#T_SY_MENU_SUBMENU_ID").val()==""){
			$("#T_SY_MENU_SUBMENU_ID").tips({
				side:3,
	            msg:'请输入菜单ID',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_MENU_SUBMENU_ID").focus();
			return false;
		}
		if($("#T_SY_MENU_NAME").val()==""){
			$("#T_SY_MENU_NAME").tips({
				side:3,
	            msg:'请输入菜单名称',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_MENU_NAME").focus();
			return false;
		}
		if($("#T_SY_MENU_PARENT_ID").val()==""){
			$("#T_SY_MENU_PARENT_ID").tips({
				side:3,
	            msg:'请输入父级菜单ID',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_MENU_PARENT_ID").focus();
			return false;
		}
		if($("#T_SY_MENU_URL").val()==""){
			$("#T_SY_MENU_URL").tips({
				side:3,
	            msg:'请输入菜单地址',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_MENU_URL").focus();
			return false;
		}
		if($("#T_SY_MENU_DISABLED").val()==""){
			$("#T_SY_MENU_DISABLED").tips({
				side:3,
	            msg:'请输入是否禁用',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_MENU_DISABLED").focus();
			return false;
		}
		if($("#T_SY_MENU_ORDER").val()==""){
			$("#T_SY_MENU_ORDER").tips({
				side:3,
	            msg:'请输入排序',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_MENU_ORDER").focus();
			return false;
		}
		if($("#T_SY_MENU_DESCRIPTION").val()==""){
			$("#T_SY_MENU_DESCRIPTION").tips({
				side:3,
	            msg:'请输入菜单描述',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_MENU_DESCRIPTION").focus();
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
	<form action="menusy/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="T_SY_MENU_ID" id="T_SY_MENU_ID" value="${pd.T_SY_MENU_ID}"/>
		<div id="zhongxin">
		<br/><br/>
		<table align="center">
			<%-- <tr>
				<td><input type="text" name="T_SY_MENU_ID" id="T_SY_MENU_ID" value="${pd.T_SY_MENU_ID}" maxlength="32" placeholder="这里输入主键" title="主键"/></td>
			</tr> --%>
			<tr>
				<td>菜单ID：</td>
				<td><input type="number" style="width:97%;"  name="T_SY_MENU_SUBMENU_ID" id="T_SY_MENU_SUBMENU_ID" value="${pd.T_SY_MENU_SUBMENU_ID}" maxlength="32" placeholder="这里输入菜单ID" title="菜单ID"/></td>
			</tr>
			<tr>
				<td>菜单名称：</td>
				<td><input type="text" style="width:97%;"  name="T_SY_MENU_NAME" id="T_SY_MENU_NAME" value="${pd.T_SY_MENU_NAME}" maxlength="32" placeholder="这里输入菜单名称" title="菜单名称"/></td>
			</tr>
			<tr>
				<td>父级菜单ID：</td>
				<td>
					<%-- <input type="number" style="width:97%;"  name="T_SY_MENU_PARENT_ID" id="T_SY_MENU_PARENT_ID" value="${pd.T_SY_MENU_PARENT_ID}" maxlength="32" placeholder="这里输入父级菜单ID" title="父级菜单ID"/> --%>
					<select  name="T_SY_MENU_PARENT_ID" id="T_SY_MENU_PARENT_ID" title="父级菜单ID" style="width:100%;">
							<option value="0" <c:if test="${var.T_SY_MENU_PARENT_ID == 0 }">selected</c:if> >0_无</option>
							<c:forEach items="${varList}" var="var" varStatus="vs">
								<option value="${var.T_SY_MENU_PARENT_ID }" <c:if test="${var.T_SY_MENU_SUBMENU_ID == pd.T_SY_MENU_PARENT_ID }">selected</c:if> >${var.T_SY_MENU_SUBMENU_ID}_${var.T_SY_MENU_NAME} </option>
							</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>菜单地址：</td>
				<td><input type="text" style="width:97%;"  name="T_SY_MENU_URL" id="T_SY_MENU_URL" value="${pd.T_SY_MENU_URL}" maxlength="32" placeholder="这里输入菜单地址" title="菜单地址"/></td>
			</tr>
			<tr>
				<td>是否禁用：</td>
				<td>
					<%-- <input type="number" style="width:97%;"  name="T_SY_MENU_DISABLED" id="T_SY_MENU_DISABLED" value="${pd.T_SY_MENU_DISABLED}" maxlength="32" placeholder="这里输入是否禁用" title="是否禁用"/> --%>
					<select  style="width:100%;" name="T_SY_MENU_DISABLED" id="T_SY_MENU_DISABLED" title="是否禁用">
						<option value="0" <c:if test="${pd.T_SY_MENU_DISABLED == 0 }">selected</c:if> >不禁用</option>
						<option value="1" <c:if test="${pd.T_SY_MENU_DISABLED == 1 }">selected</c:if> >禁用</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>排序：</td>
				<td><input type="number" style="width:97%;"  name="T_SY_MENU_ORDER" id="T_SY_MENU_ORDER" value="${pd.T_SY_MENU_ORDER}" maxlength="32" placeholder="这里输入排序" title="排序"/></td>
			</tr>
			<tr>
				<td>创建时间：</td>
				<td><input class="span10 date-picker" name="T_SY_CREATEDATE" id="T_SY_CREATEDATE" value="${pd.T_SY_CREATEDATE}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="创建时间" title="创建时间"/></td>
			</tr>
			<tr>
				<td>菜单描述：</td>
				<%-- <td><textarea name="T_SY_MENU_DESCRIPTION" id="T_SY_MENU_DESCRIPTION" rows="4" cols="102" placeholder="这里输入菜单描述" title="菜单描述"> ${pd.T_SY_MENU_DESCRIPTION} </textarea><td>
				<input type="text" name="T_SY_MENU_DESCRIPTION" id="T_SY_MENU_DESCRIPTION" value="${pd.T_SY_MENU_DESCRIPTION}" maxlength="32" placeholder="这里输入菜单描述" title="菜单描述"/></td> --%>
				<td id="nr">
					<%-- <input type="text" name="T_SY_VALUE" id="T_SY_VALUE" value="${pd.T_SY_VALUE}" maxlength="32" placeholder="这里输入描述" title="描述"/> --%>
					<textarea name="T_SY_MENU_DESCRIPTION" id="T_SY_MENU_DESCRIPTION"   style="width:70%;height:300px" placeholder="这里输入菜单描述"  title="菜单描述">  ${pd.T_SY_MENU_DESCRIPTION} </textarea>
				</td>
				
			</tr>
			<!--<tr>
				<td><input type="text" name="T_SY_BZ1" id="T_SY_BZ1" value="${pd.T_SY_BZ1}" maxlength="32" placeholder="这里输入备注1" title="备注1"/></td>
			</tr>
			<tr>
				<td><input type="text" name="T_SY_BZ2" id="T_SY_BZ2" value="${pd.T_SY_BZ2}" maxlength="32" placeholder="这里输入备注2" title="备注2"/></td>
			</tr>-->
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
			UE.getEditor('T_SY_MENU_DESCRIPTION');
			} 
		setTimeout('reurl()',500);
		</script>
</body>
</html>