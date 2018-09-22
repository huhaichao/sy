<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>拾缘科技_登录</title>
		<meta name="description" content="拾缘科技平台">
		<meta name="author" content="htmlcoder.me">
          <%@ include file="../commons.jsp"%> 
		<!-- Mobile Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- Favicon -->
		<link rel="shortcut icon" href="../static/web/images/favicon.ico">


       <!--  <script type="text/javascript" src="../static/jsloader.js"></script> 
		<script type="text/javascript" src="../static/common.js"></script>-->
</head>
<body>
		<div id="moquu_wxin" class="moquu_wxin"><a href="javascript:alert('iOS');">iOS<div class="moquu_wxinh"></div></a></div>
		<div id="moquu_wshare" class="moquu_wshare"><a href="javascript:alert('android');">android<div class="moquu_wshareh"></div></a></div>
		<div id="moquu_wmaps" class="moquu_wmaps"><a href="javascript:alert('电话');">电话<div class='moquu_wmapsh'></div></a></div>
		<a id="moquu_top" href="#header-top-second"></a>
		<!-- scrollToTop -->
		<!-- ================ -->
		<div class="scrollToTop"><i class="icon-up-open-big"></i></div>

		<!-- page wrapper start -->
		<!-- ================ -->
		<div class="page-wrapper">
        	
            <!-- header-top start -->
			<div id="dht" class="header-top" style=" z-index:10;">
				<div class="container">
					<div class="row">
                    	<div class="col-xs-2 col-sm-6">&nbsp;
                        </div>
						<div class="col-xs-10 col-sm-6">
							<!-- header-top-second start -->
							<!-- ================ -->
							<div id="header-top-second"  class="clearfix" style=" text-align:right;">
								<!-- header top dropdowns start -->
								<!-- ================ -->
								<div class="header-top-dropdown">
									<div class="btn-group dropdown">
										<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fa fa-search"></i> 搜索</button>
										<ul class="dropdown-menu dropdown-menu-right dropdown-animation">
											<li>
												<form role="search" class="search-box">
													<div class="form-group has-feedback">
														<input type="text" class="form-control" placeholder="Search">
														<i class="fa fa-search form-control-feedback"></i>
													</div>
												</form>
											</li>
										</ul>
									</div>
                                      <div class="btn-group dropdown">
										<button id="btnsylogin" type="button" class="btn dropdown-toggle"><i class="glyphicon glyphicon-phone"></i>&nbsp;<a href="#">登录</a></button>
									</div>
									<div class="btn-group dropdown">
										<button id="btnregist" type="button" class="btn dropdown-toggle"><i class="glyphicon glyphicon-user"></i>&nbsp;<a href="#">注册</a></button>
									</div>
									<div class="btn-group dropdown">
										<button id="btnuser" type="button" class="btn dropdown-toggle"><i class="fa fa-user"></i>&nbsp;<a id="username" href="#">未登陆</a></button>
									</div>
									<div class="btn-group dropdown">
										<button id="btnlogout" type="button" class="btn dropdown-toggle"><i class="glyphicon glyphicon-off"></i>&nbsp;<a href="#">退出</a></button>
									</div> 
								 </div>
								<!--  header top dropdowns end -->
							</div>
							<!-- header-top-second end -->
						</div>
					</div>
				</div>
			</div>
			<!-- header-top end -->
        
			<!-- header start (remove fixed class from header in order to disable fixed navigation mode) -->
			<!-- ================ --> 
			<header class="header fixed clearfix">
				<div class="container">
					<div class="row">
						<div class="col-md-3">
							<!-- header-left start -->
							<!-- ================ -->
							<div class="header-left clearfix">								<!-- logo -->
								<div class="logo">
									<a href="../index.html"><img id="logo" src="../static/web/images/logo_red.png" alt="iDea"></a>
								</div>
								<!-- name-and-slogan -->
								<div class="site-slogan">irevest_拾缘科技
								</div>
							</div>
							<!-- header-left end -->
						</div>
					</div>
				</div>
			</header>
			<!-- header end -->
			<!-- main-container start -->
			<!-- ================ -->
			<section class="main-container">
				<div class="container">
					<div class="row">
						<!-- main start -->
						<!-- ================ -->
						<div class="main col-md-8">
                        	<div>&nbsp;</div>
							<div class="well" style="background-color: #FFFFFF;">
								<div class="testimonial clearfix">
                                     <!-- tabs start -->
							<div class="tabs-style-2">
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">
									<li class="active"><a href="#h2tab1" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-phone"></i>&nbsp;用户登录</a></li>
									<li><a href="#h2tab2" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-lock"></i>&nbsp;忘记密码？</a></li>
								</ul>
								<!-- Tab panes -->
								<div class="tab-content">
									<div class="tab-pane fade in active" id="h2tab1">
										<table class="table">
                                        <tbody>
                                        	<tr>
                                                <td colspan="4" width="100px;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                            	<td>&nbsp;</td>
                                                <td valign="middle" align="right"><span style="font-size: 18px;">手机号</span></td>
                                                <td colspan="2"  valign="middle">
                                                <input type="text" class="form-control" id="uid" name="phone" placeholder="请输入手机号！"  style="width:375px; height:45px;" /></td>
                                            </tr>
                                            <tr>
                                            	<td>&nbsp;</td>
                                                <td valign="middle" align="right"><span style="font-size: 18px;">密&nbsp;码</span></td>
                                                  <td colspan="2"  valign="middle">
                                                <input type="password" class="form-control" id="pwd" name="pass" placeholder="请输入密码！" style="width:375px; height:45px;" /></td>
                                            </tr>
                                            <tr>
                                                <td colspan="4" align="center"><input type="button" id="btnlogin" value="登录"  class="btn btn-default btn-sm" style=" width:400px;height:45px;" /></td>
                                            </tr>
                                            <tr>
                                                <td colspan="4" style="text-align:right; height:55px;"><a href="toRegister">注册帐户</a>&nbsp;&nbsp;<a href="../downLoad/qrcode.do">手机下载</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
									</div>
									<div class="tab-pane fade" id="h2tab2">
										<table class="table">
                                        <tbody>
                                        	<tr>
                                                <td colspan="4" width="100px;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="middle" align="right"><span style="font-size: 18px;">手机号</span></td>
                                                <td colspan="2"  valign="middle">
                                                <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入手机号！"  style="width:375px; height:45px;" /></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="middle" align="right"><span style="font-size: 18px;">验证码</span></td>
                                                <td style="width:200px; height:50px;"  valign="middle">
                                                <input type="text" class="form-control" id="yzm" name="yzm" placeholder="请输入验证码！"  style="width:240px; height:45px; margin-top:10px;" /></td>
                                                <td align="left" valign="middle">
                                                <input type="button" value="获取验证码" class="btn btn-default btn-sm" style="height:45px;" />&nbsp;&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="middle" align="right"><span style="font-size: 18px;">新密码</span></td>
                                                <td colspan="2"  valign="middle">
                                                <input type="password" class="form-control" id="pass" name="pass" placeholder="请输入新密码！" style="width:375px; height:45px;" /></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="middle" align="right"><span style="font-size: 18px;">确认密码</span></td>
                                                <td colspan="2"  valign="middle">
                                                <input type="password" class="form-control" id="repass" name="repass" placeholder="请输入确认密码！" style="width:375px; height:45px;" /></td>
                                            </tr>
                                            <tr>
                                                <td colspan="4" align="center"><input id="modifyPass" type="button" value="修改" class="btn btn-default btn-sm" style=" width:450px;height:45px;" /></td>
                                            </tr>
                                        </tbody>
                                    </table>
									</div>
								</div>
							</div>
							<!-- tabs end -->
								</div>
							</div>
                            
						</div>
						<!-- main end -->
                        <div class="col-lg-4 col-sm-4">
                            <div class="box-style-1 while-bg team-member">
                                <div class="overlay-container">
                                    <img src="../static/web/images/team-member-1.jpg" alt="">
                                </div>
                                <div class="image-box-body">
                                    <h3 class="title">小新</h3>
                                    <p>野原新之助，7岁，在日本大阪走失，联系电话：12345678901.</p>
                                </div>
                            </div>
                        </div>
                      </div>
				</div>
			</section>
			<!-- main-container end -->
		</div>

<script type="text/javascript">
		//服务器校验
		function savetoCheck() {
			if (check()) {

				var loginname = $("#uid").val();
				var password = $("#pwd").val();
	
				//var code = loginname + "|" + password + "|" + $("#code").val();
				$.ajax({
					type : "POST",
					url : '/sy/web/login',
					data : {
						tSyPhone : loginname,
						tSyPassword : password
					},
					dataType : 'json',
					cache : false,
					success : function(data) {
						if ("success" == data.result) {
							//saveCookie();
							//$("#userinfo").attr("value","yumeng");
						    window.location.href = "/sy";
						} else {														
							//alert("登录失败，请确认是否输入正确得用户名和密码...");
							$("#uid").tips({
								side:2,
					            msg:'登录失败，请确认是否输入正确得用户名和密码...',
					            bg:'#F80000',
					            time:2
					        });
							$("#uid").focus();
						}
					}
				});
			}
		}

		$(document).ready(function() {
			
			init();
		     
			   
			$("#btnlogin").click(function(){
				savetoCheck();
			});
			
			$("#modifyPass").click(function(){
				modyfyPwd();
			});			
			
			//用户信息
			$("#btnuser").click(function(){
				window.location.href = "toPerinfo";
			});
			//注册
			$("#btnregist").click(function(){
				window.location.href = "toRegister";
			});
			//登陆
			$("#btnsylogin").click(function(){
				window.location.href = "toLogin";
			});
			//注销
			$("#btnlogout").click(function(){
				logout();
			});
			
		});
		
	

// 		$(document).keyup(function(event) {
// 			if (event.keyCode == 13) {
// 				$("#btnlogin").trigger("click");
// 			}
// 		});

		//客户端校验
			function check() {

			    var reg=/^1[3|4|5|8][0-9]\d{4,8}$/;
			    var phone = document.getElementById('uid').value;
			    if(!(reg.test(phone))){ 
			            //alert("手机号码输入不正确，请检查..."); 
			    		$("#uid").tips({
							side:2,
				            msg:'手机号码输入不正确，请检查......',
				            bg:'#F80000',
				            time:2
				        });		          
			            $("#uid").focus();
			            return false; 
			    } ;
			    
				if ($("#uid").val() == "" || $("#uid").val() == " " ) {
                    //alert("用户名不得为空");
             		$("#uid").tips({
						side:2,
			            msg:'用户名不得为空......',
			            bg:'#F80000',
			            time:2
			        });	
					$("#uid").focus();
					return false;
				} else {
					$("#uid").val(jQuery.trim($('#uid').val()));
				};

				if ($("#pwd").val() == "" || $("#pwd").val() == " ") {
                    //alert("密码不得为空");
            		$("#pwd").tips({
						side:2,
			            msg:'密码不得为空......',
			            bg:'#F80000',
			            time:2
			        });	
					$("#pwd").focus();
					return false;
				};
	 			return true;
	 		}

//密码修改部分-----------------------------------------------------
		
			function modyfyPwd() {
			if (checkPwdModify()) {

				var loginname = $("#phone").val();
				var password = $("#pass").val();
				var repassword = $("#repass").val();
				var code = $("#yzm").val();
				//var code = loginname + "|" + password + "|" + $("#code").val();
				$.ajax({
					type : "POST",
					url : '/sy/web/forgetpassword',
					data : {
						tSyPhone : loginname,
						tSyPassword : password
					},
					dataType : 'json',
					cache : false,
					success : function(data) {
						if ("sucess" == data.result) {
							//alert("修改密码成功,请重新登录...");
							$("#phone").tips({
								side:2,
					            msg:'修改密码成功,请重新登录.......',
					            bg:'#F80000',
					            time:2
					        });	
						    window.location.href = "toLogin";
						} else {							
							//alert("修改密码失败，请重新修改...");
							$("#phone").tips({
								side:2,
					            msg:'修改密码失败，请重新修改.......',
					            bg:'#F80000',
					            time:2
					        });	
							$("#phone").focus();
						}
					}
				});
			}
		};

			//客户端校验
			function checkPwdModify() {

			    var reg=/^1[3|4|5|8][0-9]\d{4,8}$/;
			    var phone = document.getElementById('phone').value;
			    if(!(reg.test(phone))){ 
			            //alert("手机号码输入不正确，请检查..."); 
			        	$("#phone").tips({
							side:2,
				            msg:'手机号码输入不正确，请检查.......',
				            bg:'#F80000',
				            time:2
				        });				            
			            $("#phone").focus();
			            return false; 
			    } ;
			    
				if ($("#phone").val() == "" || $("#phone").val() == " " ) {
                   // alert("用户名不得为空");
                  	$("#phone").tips({
						side:2,
			            msg:'用户名不得为空.......',
			            bg:'#F80000',
			            time:2
			        });	
					$("#phone").focus();
					return false;
				} else {
					$("#phone").val(jQuery.trim($('#phone').val()));
				};

				if ($("#pass").val() == "" || $("#pass").val() == " ") {
                    //alert("密码不得为空");
                	$("#pass").tips({
						side:2,
			            msg:'密码不得为空.......',
			            bg:'#F80000',
			            time:2
			        });	
					$("#pass").focus();
					return false;
				};
				if ($("#repass").val() == "" || $("#repass").val() == " ") {
                    //alert("确认密码不得为空");
                	$("#repass").tips({
						side:2,
			            msg:'密码不得为空.......',
			            bg:'#F80000',
			            time:2
			        });	
					$("#repass").focus();
					return false;
				};
	 			if ($("#yzm").val() == "") {
                    //alert("验证码不得为空");
                   	$("#yzm").tips({
						side:2,
			            msg:'验证码不得为空.......',
			            bg:'#F80000',
			            time:2
			        });	
	 				$("#yzm").focus();
	 				return false;
	  		    };
	 	       if(!($("#pass").val() == $("#repass").val())){
               	    //alert("密码和密码确认输入不一致，请重新输入...");
	            	$("#yzm").tips({
						side:2,
			            msg:'密码和密码确认输入不一致，请重新输入.......',
			            bg:'#F80000',
			            time:2
			        });	
               	    $("#pass").val("");
               	    $("#repass").val("");
  	 				$("#pass").focus();
  	 				return false;
               }
	 			return true;
	 		}
		
		
// 		function savePaw() {
// 			if (!$("#saveid").attr("checked")) {
// 				$.cookie('loginname', '', {
// 					expires : -1
// 				});
// 				$.cookie('password', '', {
// 					expires : -1
// 				});
// 				$("#loginname").val('');
// 				$("#password").val('');
// 			}
// 		}

// 		function saveCookie() {
// 			if (check()) {
// 				$.cookie('phone', $("#phone").val(), {
// 					expires : 7
// 				});
// 				$.cookie('pass', $("#pass").val(), {
// 					expires : 7
// 				});
// 			}
// 		}

		
// 	    function openwin(msg) { 
// 	         //获得窗口的垂直位置 
//              var iTop = (window.screen.availHeight - 30 - 100) / 2; 
//              //获得窗口的水平位置 
//              var iLeft = (window.screen.availWidth - 10 - 400) / 2; 
// 	         OpenWindow = window.open("", "newwin", "top="+iTop+",left="+iLeft+",height=250, width=250,toolbar=no ,scrollbars=" + scroll + ",menubar=no");  
// 	         //写成一行   
// 	         OpenWindow.document.write("<TITLE>拾缘</TITLE>")  
// 	         OpenWindow.document.write("<BODY BGCOLOR=#ffffff>")  
// 	         OpenWindow.document.write("<h1>系统提示</h1>")  
// 	         OpenWindow.document.write(msg)  
// 	         OpenWindow.document.write("</BODY>")  
// 	         OpenWindow.document.write("</HTML>")  
// 	         OpenWindow.document.close()  
// 	     }  
	     

// 		function init() {
// 			var loginname = $.cookie('phone');
// 			var password = $.cookie('pass');
// 			if (typeof (loginname) != "undefined" && typeof (password) != "undefined") {
// 				$("#phone").val(loginname);
// 				$("#pass").val(password);
// 				$("#phone").focus();
// 			}
// 		};
	</script>
</body>
</html>