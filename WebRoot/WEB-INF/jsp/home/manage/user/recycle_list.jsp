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
	<base href="<%=basePath%>"><!-- jsp文件头和头部 -->
	<%@ include file="../../../system/admin/top.jsp"%> 
	</head>
<body>
		
<div class="container-fluid" id="main-container">


<div id="page-content" class="clearfix">
						
  <div class="row-fluid">

	<div class="row-fluid"  id="zhongxin">
	
			<!-- 检索  -->
			<form action="usersy/selRecycle.do" method="post" name="Form" id="Form">
			<table>
				<tr>
					<td>
						<span class="input-icon">
							<input autocomplete="off" id="nav-search-input" type="text" name="T_SY_USERNAME" id="T_SY_USER_STATUS" value="${pd.T_SY_USERNAME }" placeholder="这里输入关键词" />
							<i id="nav-search-icon" class="icon-search"></i>
						</span>
					</td>
					<td><input class="span10 date-picker" name="lastLoginStart" id="lastLoginStart" value="${pd.lastLoginStart}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;" placeholder="开始日期"/></td>
					<td><input class="span10 date-picker" name="lastLoginEnd" id="lastLoginEnd" value="${pd.lastLoginEnd}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;" placeholder="结束日期"/></td>
					<%-- <td style="vertical-align:top;"> 
					 	<select name="T_SY_ROLEID" id="T_SY_ROLEID" data-placeholder="请选择等级" style="vertical-align:top;width: 120px;">
								<option value=""></option>
							<c:forEach items="${roleList}" var="role">
								<option value="${role.ROLE_ID }" <c:if test="${pd.ROLE_ID==role.ROLE_ID}">selected</c:if>>${role.ROLE_NAME }</option>
							</c:forEach>
					  	</select>
					</td> --%>
					<td style="vertical-align:top;"> 
					 	<select name="T_SY_USER_STATUS" id=T_SY_USER_STATUS data-placeholder="状态" style="vertical-align:top;width: 120px;">
						<option value=""></option>
						<option value="0" <c:if test="${pd.T_SY_USER_STATUS == '0' }">selected</c:if> >正常</option>
						<option value="1" <c:if test="${pd.T_SY_USER_STATUS == '1' }">selected</c:if> >冻结</option>
						</select>
					</td>
					<td style="vertical-align:top;"><button class="btn btn-mini btn-light" onclick="search();"  title="检索"><i id="nav-search-icon" class="icon-search"></i></button></td>
					<c:if test="${QX.cha == 1 }">
					<td style="vertical-align:top;"><a class="btn btn-mini btn-light" onclick="toExcel();" title="导出到EXCEL"><i id="nav-search-icon" class="icon-download-alt"></i></a></td>
					</c:if>
				</tr>
			</table>
			<!-- 检索  -->
		
		
			<table id="table_report" class="table table-striped table-bordered table-hover">
				
				<thead>
					<tr>
						<th class="center">
						<label><input type="checkbox" id="zcheckbox" /><span class="lbl"></span></label>
						</th>
						<th>序号</th>
						<!-- <th>主键</th>
						<th>帐号</th>
						<th>密码</th>
						<th>支付密码</th> -->
						<th><i class="icon-user"></i>名称</th>
						<th>昵称</th>
						<th>性别</th>
						<!-- <th>出生日期</th>
						<th>身份证号</th>
						<th>电子邮箱</th>
						<th>手机号</th>
						<th>备注</th> -->
						<th>积分</th>
						<!-- <th>头像地址</th> -->
						<th>状态</th>
						<!-- <th>账户状态</th>
						<th><i class="icon-lock"></i>角色ID</th> --> 
						<th><i class="icon-time hidden-phone"></i>创建时间</th>
						<th><i class="icon-time hidden-phone"></i>上次登录时间</th>
						<th>是否在线</th>
						<!-- <th>受否受限制</th>
						<th>备注1</th>
						<th>备注2</th>
						<th>删除标识</th>
						<th>删除时间</th> -->
						<th class="center">操作</th>
					</tr>
				</thead>
										
				<tbody>
					
				<!-- 开始循环 -->	
				<c:choose>
					<c:when test="${not empty varList}">
						<c:if test="${QX.cha == 1 }">
						<c:forEach items="${varList}" var="var" varStatus="vs">
							<tr>
								<td class='center' style="width: 30px;">
									<label><input type='checkbox' name='ids' value="${var.T_SY_USER_ID}" /><span class="lbl"></span></label>
								</td>
								<td class='center' style="width: 30px;">${vs.index+1}</td>
										<%-- <td>${var.T_SY_USER_ID}</td>
										<td>${var.T_SY_ACCOUNT}</td>
										<td>${var.T_SY_PASSWORD}</td>
										<td>${var.T_SY_PAY_PASSWORD}</td> --%>
										<td>${var.T_SY_USERNAME}</td>
										<td>${var.T_SY_NICKNAME}</td>
										<c:if test="${var.T_SY_SEX == 1 }">
											<td>女</td>
										</c:if>
										<c:if test="${var.T_SY_SEX == 0 }">
											<td>男</td>
										</c:if>
										<%-- <td>${var.T_SY_DATEOFBIRTH}</td>
										<td>${var.T_SY_CARDID}</td>
										<td>${var.T_SY_MAIL}</td>
										<td>${var.T_SY_PHONE}</td>
										<td>${var.T_SY_REMARK}</td> --%>
										<td>${var.T_SY_INTEGRAL}</td>
										<%-- <td>${var.T_SY_IMGPATH}</td> --%>
										<c:if test="${var.T_SY_USER_STATUS == 1 }">
											<td><span class="label label-important arrowed-in">冻结</span></td>
										</c:if>
										<c:if test="${var.T_SY_USER_STATUS == 0 }">
											<td><span class="label label-success arrowed">正常</span></td>
										</c:if>
										<%-- <td>${var.T_SY_ACCOUNT_STATE}</td>
										<td>${var.T_SY_ROLEID}</td> --%>
										<td>${var.T_SY_CREATE_TIME}</td>
										<td>${var.T_SY_LASTLOGINTIME}</td>
										<c:if test="${var.T_SY_ISONLINE == 1 }">
											<td><span class="label label-important arrowed-in">离线</span></td>
										</c:if>
										<c:if test="${var.T_SY_ISONLINE == 0 }">
											<td><span class="label label-important arrowed-in">在线</span></td>
										</c:if>
										<%--<td>${var.T_SY_ISLIMIR}</td>
										<td>${var.T_SY_BZ1}</td>
										<td>${var.T_SY_BZ2}</td>
										<td>${var.T_SY_DEL_STATUS}</td>
										<td>${var.T_SY_DEL_DATE}</td> --%>
								<td style="width: 30px;" class="center">
									<div class='hidden-phone visible-desktop btn-group'>
									
										<c:if test="${QX.edit != 1 && QX.del != 1 }">
										<span class="label label-large label-grey arrowed-in-right arrowed-in"><i class="icon-lock" title="无权限"></i></span>
										</c:if>
										<div class="inline position-relative">
										<button class="btn btn-mini btn-info" data-toggle="dropdown"><i class="icon-cog icon-only"></i></button>
										<ul class="dropdown-menu dropdown-icon-only dropdown-light pull-right dropdown-caret dropdown-close">
											<li><a style="cursor:pointer;" title="删除" onclick="del('${var.T_SY_USER_ID}');" class="tooltip-error" data-rel="tooltip" title="" data-placement="left"><span class="red"><i class="icon-trash"></i></span> </a></li>
											<li><a style="cursor:pointer;" title="还原" onclick="cycle('${var.T_SY_USER_ID}');" class="tooltip-success" data-rel="tooltip" title="" data-placement="left"><span class="green"><i class="icon-share"></i></span></a></li>
										</ul>
										</div>
									</div>
								</td>
							</tr>
						
						</c:forEach>
						</c:if>
						<c:if test="${QX.cha == 0 }">
							<tr>
								<td colspan="100" class="center">您无权查看</td>
							</tr>
						</c:if>
					</c:when>
					<c:otherwise>
						<tr class="main_info">
							<td colspan="100" class="center" >没有相关数据</td>
						</tr>
					</c:otherwise>
				</c:choose>
					
				
				</tbody>
			</table>
			
		<div class="page-header position-relative">
		<table style="width:100%;">
			<tr>
				<td style="vertical-align:top;">
					<c:if test="${QX.del == 1 }">
					<a class="btn btn-small btn-danger" onclick="makeAll('确定要删除选中的数据吗?');" title="批量删除" ><i class='icon-trash'></i></a>
					</c:if>
					<a class="btn btn-small btn-info" onclick="restoreAll('确定要还原选中的数据吗?');" title="批量还原" >还原</a>
				</td>
				<td style="vertical-align:top;"><div class="pagination" style="float: right;padding-top: 0px;margin-top: 0px;">${page.pageStr}</div></td>
			</tr>
		</table>
		</div>
		</form>
	</div>
 
 
 
 
	<!-- PAGE CONTENT ENDS HERE -->
  </div><!--/row-->
	
</div><!--/#page-content-->
</div><!--/.fluid-container#main-container-->
		
		<!-- 返回顶部  -->
		<a href="#" id="btn-scroll-up" class="btn btn-small btn-inverse">
			<i class="icon-double-angle-up icon-only"></i>
		</a>
		
		<!-- 引入 -->
		<script type="text/javascript">window.jQuery || document.write("<script src='static/js/jquery-1.9.1.min.js'>\x3C/script>");</script>
		<script src="static/js/bootstrap.min.js"></script>
		<script src="static/js/ace-elements.min.js"></script>
		<script src="static/js/ace.min.js"></script>
		
		<script type="text/javascript" src="static/js/chosen.jquery.min.js"></script><!-- 下拉框 -->
		<script type="text/javascript" src="static/js/bootstrap-datepicker.min.js"></script><!-- 日期框 -->
		<script type="text/javascript" src="static/js/bootbox.min.js"></script><!-- 确认窗口 -->
		<!-- 引入 -->
		<script type="text/javascript" src="static/js/jquery.tips.js"></script><!--提示框-->
		<script type="text/javascript">
		
		$(top.hangge());
		
		//检索
		function search(){
			top.jzts();
			$("#Form").submit();
		}
		
		//删除
		function del(Id){
			bootbox.confirm("确定要删除吗?", function(result) {
				if(result) {
					top.jzts();
					var url = "<%=basePath%>usersy/delete.do?T_SY_USER_ID="+Id+"&tm="+new Date().getTime();
					$.get(url,function(data){
						nextPage(${page.currentPage});
					});
				}
			});
		}
		
		//还原
		function cycle(Id){
			bootbox.confirm("确定要还原吗?", function(result) {
				if(result) {
					top.jzts();
					var url = "<%=basePath%>usersy/restore.do?T_SY_USER_ID="+Id+"&tm="+new Date().getTime();
					$.get(url,function(data){
						nextPage(${page.currentPage});
					});
				}
			});
		}
		</script>
		
		<script type="text/javascript">
		
		$(function() {
			
			//下拉框
			$(".chzn-select").chosen(); 
			$(".chzn-select-deselect").chosen({allow_single_deselect:true}); 
			
			//日期框
			$('.date-picker').datepicker();
			
			//复选框
			$('table th input:checkbox').on('click' , function(){
				var that = this;
				$(this).closest('table').find('tr > td:first-child input:checkbox')
				.each(function(){
					this.checked = that.checked;
					$(this).closest('tr').toggleClass('selected');
				});
					
			});
			
		});
		
		
		//批量操作
		function makeAll(msg){
			bootbox.confirm(msg, function(result) {
				if(result) {
					var str = '';
					for(var i=0;i < document.getElementsByName('ids').length;i++)
					{
						  if(document.getElementsByName('ids')[i].checked){
						  	if(str=='') str += document.getElementsByName('ids')[i].value;
						  	else str += ',' + document.getElementsByName('ids')[i].value;
						  }
					}
					if(str==''){
						bootbox.dialog("您没有选择任何内容!", 
							[
							  {
								"label" : "关闭",
								"class" : "btn-small btn-success",
								"callback": function() {
									//Example.show("great success");
									}
								}
							 ]
						);
						
						$("#zcheckbox").tips({
							side:3,
				            msg:'点这里全选',
				            bg:'#AE81FF',
				            time:8
				        });
						
						return;
					}else{
						if(msg == '确定要删除选中的数据吗?'){
							top.jzts();
							$.ajax({
								type: "POST",
								url: '<%=basePath%>usersy/deleteAll.do?tm='+new Date().getTime(),
						    	data: {DATA_IDS:str},
								dataType:'json',
								//beforeSend: validateData,
								cache: false,
								success: function(data){
									 $.each(data.list, function(i, list){
											nextPage(${page.currentPage});
									 });
								}
							});
						}
					}
				}
			});
		}
		
		//批量操作
		function restoreAll(msg){
			bootbox.confirm(msg, function(result) {
				if(result) {
					var str = '';
					for(var i=0;i < document.getElementsByName('ids').length;i++)
					{
						  if(document.getElementsByName('ids')[i].checked){
						  	if(str=='') str += document.getElementsByName('ids')[i].value;
						  	else str += ',' + document.getElementsByName('ids')[i].value;
						  }
					}
					if(str==''){
						bootbox.dialog("您没有选择任何内容!", 
							[
							  {
								"label" : "关闭",
								"class" : "btn-small btn-success",
								"callback": function() {
									//Example.show("great success");
									}
								}
							 ]
						);
						
						$("#zcheckbox").tips({
							side:3,
				            msg:'点这里全选',
				            bg:'#AE81FF',
				            time:8
				        });
						
						return;
					}else{
						if(msg == '确定要还原选中的数据吗?'){
							top.jzts();
							$.ajax({
								type: "POST",
								url: '<%=basePath%>usersy/restoreAll.do?tm='+new Date().getTime(),
						    	data: {DATA_IDS:str},
								dataType:'json',
								//beforeSend: validateData,
								cache: false,
								success: function(data){
									 $.each(data.list, function(i, list){
											nextPage(${page.currentPage});
									 });
								}
							});
						}
					}
				}
			});
		}
		
		//导出excel
		function toExcel(){
			window.location.href='<%=basePath%>usersy/excel.do';
		}
		</script>
		
	</body>
</html>

