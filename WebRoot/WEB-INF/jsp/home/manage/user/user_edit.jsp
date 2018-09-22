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
			/* if($("#T_SY_USER_ID").val()==""){
			$("#T_SY_USER_ID").tips({
				side:3,
	            msg:'请输入主键',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_USER_ID").focus();
			return false;
		}
		if($("#T_SY_ACCOUNT").val()==""){
			$("#T_SY_ACCOUNT").tips({
				side:3,
	            msg:'请输入帐号',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_ACCOUNT").focus();
			return false;
		} */
		if($("#T_SY_PASSWORD").val()==""){
			$("#T_SY_PASSWORD").tips({
				side:3,
	            msg:'请输入密码',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_PASSWORD").focus();
			return false;
		}
		if($("#T_SY_PAY_PASSWORD").val()==""){
			$("#T_SY_PAY_PASSWORD").tips({
				side:3,
	            msg:'请输入支付密码',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_PAY_PASSWORD").focus();
			return false;
		}
		if($("#T_SY_USERNAME").val()==""){
			$("#T_SY_USERNAME").tips({
				side:3,
	            msg:'请输入名称',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_USERNAME").focus();
			return false;
		}
		if($("#T_SY_NICKNAME").val()==""){
			$("#T_SY_NICKNAME").tips({
				side:3,
	            msg:'请输入昵称',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_NICKNAME").focus();
			return false;
		}
		if($("#T_SY_SEX").val()==""){
			$("#T_SY_SEX").tips({
				side:3,
	            msg:'请输入性别',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_SEX").focus();
			return false;
		}
		if($("#T_SY_DATEOFBIRTH").val()==""){
			$("#T_SY_DATEOFBIRTH").tips({
				side:3,
	            msg:'请输入出生日期',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_DATEOFBIRTH").focus();
			return false;
		}
		if($("#T_SY_CARDID").val()==""){
			$("#T_SY_CARDID").tips({
				side:3,
	            msg:'请输入身份证号',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_CARDID").focus();
			return false;
		}
		if($("#T_SY_MAIL").val()==""){
			$("#T_SY_MAIL").tips({
				side:3,
	            msg:'请输入电子邮箱',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_MAIL").focus();
			return false;
		}
		if($("#T_SY_PHONE").val()==""){
			$("#T_SY_PHONE").tips({
				side:3,
	            msg:'请输入手机号',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_PHONE").focus();
			return false;
		}
		if($("#T_SY_REMARK").val()==""){
			$("#T_SY_REMARK").tips({
				side:3,
	            msg:'请输入备注',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_REMARK").focus();
			return false;
		}
		/* if($("#T_SY_INTEGRAL").val()==""){
			$("#T_SY_INTEGRAL").tips({
				side:3,
	            msg:'请输入积分',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_INTEGRAL").focus();
			return false;
		} */
		if($("#T_SY_IMGPATH").val()==""){
			$("#T_SY_IMGPATH").tips({
				side:3,
	            msg:'请输入头像地址',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_IMGPATH").focus();
			return false;
		}
		/* if($("#T_SY_USER_STATUS").val()==""){
			$("#T_SY_USER_STATUS").tips({
				side:3,
	            msg:'请输入状态',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_USER_STATUS").focus();
			return false;
		}
		if($("#T_SY_ACCOUNT_STATE").val()==""){
			$("#T_SY_ACCOUNT_STATE").tips({
				side:3,
	            msg:'请输入账户状态',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_ACCOUNT_STATE").focus();
			return false;
		} 
		if($("#T_SY_ROLEID").val()==""){
			$("#T_SY_ROLEID").tips({
				side:3,
	            msg:'请输入角色ID',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_ROLEID").focus();
			return false;
		}*/
		if($("#T_SY_CREATE_TIME").val()==""){
			$("#T_SY_CREATE_TIME").tips({
				side:3,
	            msg:'请输入创建时间',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_CREATE_TIME").focus();
			return false;
		}
		/* if($("#T_SY_LASTLOGINTIME").val()==""){
			$("#T_SY_LASTLOGINTIME").tips({
				side:3,
	            msg:'请输入上次登录时间',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_LASTLOGINTIME").focus();
			return false;
		}
		if($("#T_SY_ISONLINE").val()==""){
			$("#T_SY_ISONLINE").tips({
				side:3,
	            msg:'请输入是否在线',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_ISONLINE").focus();
			return false;
		}
		if($("#T_SY_ISLIMIR").val()==""){
			$("#T_SY_ISLIMIR").tips({
				side:3,
	            msg:'请输入受否受限制',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_ISLIMIR").focus();
			return false;
		}
		if($("#T_SY_BZ1").val()==""){
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
		}
		if($("#T_SY_DEL_STATUS").val()==""){
			$("#T_SY_DEL_STATUS").tips({
				side:3,
	            msg:'请输入删除标识',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_DEL_STATUS").focus();
			return false;
		}
		if($("#T_SY_DEL_DATE").val()==""){
			$("#T_SY_DEL_DATE").tips({
				side:3,
	            msg:'请输入删除时间',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#T_SY_DEL_DATE").focus();
			return false;
		} */
		$("#Form").submit();
		$("#zhongxin").hide();
		$("#zhongxin2").show();
	}
	
</script>
	</head>
<body>
	<form action="usersy/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="T_SY_USER_ID" id="T_SY_USER_ID" value="${pd.T_SY_USER_ID}"/>
		<div id="zhongxin">
		<br/><br/>
		<table align="center">
			<%-- <tr>
				<td></td>
				<td><input type="number" name="T_SY_USER_ID" id="T_SY_USER_ID" value="${pd.T_SY_USER_ID}" maxlength="32" placeholder="这里输入主键" title="主键"/></td>
			</tr> --%>
			<tr>
				<td>名称：</td>
				<td><input type="text" name="T_SY_USERNAME" id="T_SY_USERNAME" value="${pd.T_SY_USERNAME}" maxlength="32" placeholder="这里输入名称" title="名称"/></td>
				<td>&nbsp;昵称：</td>
				<td><input type="text" name="T_SY_NICKNAME" id="T_SY_NICKNAME" value="${pd.T_SY_NICKNAME}" maxlength="32" placeholder="这里输入昵称" title="昵称"/></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td>
					<select name="T_SY_SEX" id="T_SY_SEX" data-placeholder="性别" style="vertical-align:top;width: 220px;">
						<option value="0" <c:if test="${pd.T_SY_SEX == '0' }">selected</c:if> >男</option>
						<option value="1" <c:if test="${pd.T_SY_SEX == '1' }">selected</c:if> >女</option>
					</select>
				</td>
				<td>&nbsp;帐号:</td>
				<td><input type="text" name="T_SY_ACCOUNT" id="T_SY_ACCOUNT" value="${pd.T_SY_ACCOUNT}" maxlength="32" placeholder="这里输入帐号" title="帐号" <c:if test="${msg == 'save' }">disabled=disabled</c:if>/></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="T_SY_PASSWORD" id="T_SY_PASSWORD" value="${pd.T_SY_PASSWORD}" maxlength="32" placeholder="这里输入密码" title="密码"/></td>
				<td>&nbsp;支付密码：</td>
				<td><input type="password" name="T_SY_PAY_PASSWORD" id="T_SY_PAY_PASSWORD" value="${pd.T_SY_PAY_PASSWORD}" maxlength="32" placeholder="这里输入支付密码" title="支付密码"/></td>
			</tr>
			<tr>
				<td>身份证号：</td>
				<td><input type="text" name="T_SY_CARDID" id="T_SY_CARDID" value="${pd.T_SY_CARDID}" maxlength="32" placeholder="这里输入身份证号" title="身份证号"/></td>
				<td>&nbsp;出生日期：</td>
				<td><input style=" width: 220px;" class="span10 date-picker" name="T_SY_DATEOFBIRTH" id="T_SY_DATEOFBIRTH" value="${pd.T_SY_DATEOFBIRTH}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="出生日期" title="出生日期"/></td>
			</tr>
			<tr>
				<td>手机号：</td>
				<td><input type="text" name="T_SY_PHONE" id="T_SY_PHONE" value="${pd.T_SY_PHONE}" maxlength="32" placeholder="这里输入手机号" title="手机号"/></td>
				<td>&nbsp;电子邮箱：</td>
				<td><input type="text" name="T_SY_MAIL" id="T_SY_MAIL" value="${pd.T_SY_MAIL}" maxlength="32" placeholder="这里输入电子邮箱" title="电子邮箱"/></td>
			</tr>
			<tr>
				<td>积分：</td>
				<td><input type="number" name="T_SY_INTEGRAL" id="T_SY_INTEGRAL" value="${pd.T_SY_INTEGRAL}" maxlength="32" placeholder="这里输入积分" title="积分" <c:if test="${msg == 'save' }">disabled=disabled</c:if>/></td>
				<td>&nbsp;角色ID：</td>
				<td>
					<select name="T_SY_ROLEID" id="T_SY_ROLEID" data-placeholder="请选择等级" style="vertical-align:top;width: 220px;" disabled=disabled>
						<c:forEach items="${roleList}" var="role">
							<option value="${role.ROLE_ID }" <c:if test="${pd.ROLE_ID==role.ROLE_ID}">selected</c:if>>${role.ROLE_NAME }</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>账户状态：</td>
				<td><%-- <input type="number" name="T_SY_ACCOUNT_STATE" id="T_SY_ACCOUNT_STATE" value="${pd.T_SY_ACCOUNT_STATE}" maxlength="32" placeholder="这里输入账户状态" title="账户状态" <c:if test="${msg == 'save' }">disabled=disabled</c:if>/> --%>
					<select  style="width:100%;" name=T_SY_ACCOUNT_STATE id="T_SY_ACCOUNT_STATE" title="账户状态" <c:if test="${msg == 'save' }">disabled=disabled</c:if>>
						<option value="0" <c:if test="${pd.T_SY_ACCOUNT_STATE == 0 }">selected</c:if> >正常</option>
						<option value="1" <c:if test="${pd.T_SY_ACCOUNT_STATE == 1 }">selected</c:if> >锁定</option>
					</select>
				</td>
				<td>&nbsp;用户状态：</td>
				<td><%-- <input type="number" name="T_SY_USER_STATUS" id="T_SY_USER_STATUS" value="${pd.T_SY_USER_STATUS}" maxlength="32" placeholder="这里输入用户状态" title="用户状态" <c:if test="${msg == 'save' }">disabled=disabled</c:if>/> --%>
					<select  style="width:100%;" name="T_SY_USER_STATUS" id="T_SY_USER_STATUS" title="用户状态" <c:if test="${msg == 'save' }">disabled=disabled</c:if>>
						<option value="0" <c:if test="${pd.T_SY_USER_STATUS == 0 }">selected</c:if> >正常</option>
						<option value="1" <c:if test="${pd.T_SY_USER_STATUS == 1 }">selected</c:if> >冻结</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>创建时间：</td>
				<td><input style=" width: 220px;" class="span10 date-picker" name="T_SY_CREATE_TIME" id="T_SY_CREATE_TIME" value="${pd.T_SY_CREATE_TIME}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="创建时间" title="创建时间"/></td>
				<td>&nbsp;上次登录时间：</td>
				<td><input class="span10 date-picker" name="T_SY_LASTLOGINTIME" id="T_SY_LASTLOGINTIME" value="${pd.T_SY_LASTLOGINTIME}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="上次登录时间" title="上次登录时间" <c:if test="${msg == 'save' }">disabled=disabled</c:if>/></td>
			</tr>
			<tr>
				<td>是否在线：</td>
				<td><%-- <input type="number" name="T_SY_ISONLINE" id="T_SY_ISONLINE" value="${pd.T_SY_ISONLINE}" maxlength="32" placeholder="这里输入是否在线" title="是否在线" <c:if test="${msg == 'save' }">disabled=disabled</c:if>/> --%>
					<select  style="width:100%;" name="T_SY_ISONLINE" id="T_SY_ISONLINE" title="是否在线" <c:if test="${msg == 'save' }">disabled=disabled</c:if>>
						<option value="0" <c:if test="${pd.T_SY_ISONLINE == 0 }">selected</c:if> >在线</option>
						<option value="1" <c:if test="${pd.T_SY_ISONLINE == 1 }">selected</c:if> >离线</option>
					</select>
				</td>
				<td>&nbsp;是否受限制：</td>
				<td><%-- <input type="number" name="T_SY_ISLIMIR" id="T_SY_ISLIMIR" value="${pd.T_SY_ISLIMIR}" maxlength="32" placeholder="这里输入是否受限制" title="是否受限制" <c:if test="${msg == 'save' }">disabled=disabled</c:if>/> --%>
					<select  style="width:100%;" name="T_SY_ISLIMIR" id="T_SY_ISLIMIR" title="是否受限制" <c:if test="${msg == 'save' }">disabled=disabled</c:if>>
						<option value="0" <c:if test="${pd.T_SY_ISLIMIR == 0 }">selected</c:if> >否</option>
						<option value="1" <c:if test="${pd.T_SY_ISLIMIR == 1 }">selected</c:if> >是</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>删除标识：</td>
				<td><%-- <input type="text" name="T_SY_DEL_STATUS" id="T_SY_DEL_STATUS" value="${pd.T_SY_DEL_STATUS}" maxlength="32" placeholder="这里输入删除标识" title="删除标识" <c:if test="${msg == 'save' }">disabled=disabled</c:if>/> --%>
					<select  style="width:100%;" name="T_SY_DEL_STATUS" id="T_SY_DEL_STATUS" title="删除标识" <c:if test="${msg == 'save' }">disabled=disabled</c:if>>
						<option value="0" <c:if test="${pd.T_SY_DEL_STATUS == 0 }">selected</c:if> >不删除</option>
						<option value="1" <c:if test="${pd.T_SY_DEL_STATUS == 1 }">selected</c:if> >删除</option>
					</select>
				</td>
				<td>&nbsp;删除时间：</td>
				<td><input style=" width: 220px;" class="span10 date-picker" name="T_SY_DEL_DATE" id="T_SY_DEL_DATE" value="${pd.T_SY_DEL_DATE}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="删除时间" title="删除时间" <c:if test="${msg == 'save' }">disabled=disabled</c:if>/></td>
			</tr>
			<tr>
				<td>备注1：</td>
				<td><input type="text" name="T_SY_BZ1" id="T_SY_BZ1" value="${pd.T_SY_BZ1}" maxlength="32" placeholder="这里输入备注1" title="备注1"/></td>
				<td>&nbsp;备注2：</td>
				<td><input type="text" name="T_SY_BZ2" id="T_SY_BZ2" value="${pd.T_SY_BZ2}" maxlength="32" placeholder="这里输入备注2" title="备注2"/></td>
			</tr>
			<tr>
				<td>头像地址：</td>
				<td colspan="3"><input style=" width: 535px;"  type="text" name="T_SY_IMGPATH" id="T_SY_IMGPATH" value="${pd.T_SY_IMGPATH}" maxlength="32" placeholder="这里输入头像地址" title="头像地址"/></td>
			</tr>
			<tr>
				<td>备注：</td>
				<td colspan="3"><textarea name="T_SY_REMARK" id="T_SY_REMARK" rows="4" cols="400"  placeholder="这里输入备注" title="备注"> ${pd.T_SY_REMARK} </textarea></td>
			</tr>
			<tr>
				<td style="text-align: center;"  colspan="4">
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