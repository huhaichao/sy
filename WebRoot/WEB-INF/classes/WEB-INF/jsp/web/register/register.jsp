<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
		<!-- Mobile Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- Favicon -->
		<link rel="shortcut icon" href="../static/web/images/favicon.ico">
        <%@ include file="../commons.jsp"%> 
</head>
<body>

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
			<div class="header-top">
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
										<button id="btnlogin" type="button" class="btn dropdown-toggle"><i class="glyphicon glyphicon-phone"></i>&nbsp;<a href="#">登录</a></button>
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
								<div class="site-slogan">
									irevest_拾缘科技
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
									<li class="active"><a href="#h2tab1" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-user"></i>&nbsp;账户注册</a></li>
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
                                                <td colspan="2" valign="middle" align="right"><span style="font-size: 18px;">手机号</span></td>
                                                <td colspan="2"  valign="middle">
                                                <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入手机号！"  style="width:375px; height:45px;" /></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="middle" align="right"><span style="font-size: 18px;">验证码</span></td>
                                                <td style="width:200px; height:50px;"  valign="middle">
                                                <input type="text" class="form-control" id="yzm" name="yzm" placeholder="请输入验证码！"  style="width:240px; height:45px; margin-top:10px;" /></td>
                                                <td align="left" valign="middle">
                                                <input id="getYzm" type="button" value="获取验证码" class="btn btn-default btn-sm" style="height:45px;" />&nbsp;&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="middle" align="right"><span style="font-size: 18px;">密码</span></td>
                                                <td colspan="2"  valign="middle">
                                                <input type="password" class="form-control" id="pass" name="pass" placeholder="请输入密码！" style="width:375px; height:45px;" /></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="middle" align="right"><span style="font-size: 18px;">确认密码</span></td>
                                                <td colspan="2"  valign="middle">
                                                <input type="password" class="form-control" id="repass" name="pass2" placeholder="请输入确认密码！" style="width:375px; height:45px;" /></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">&nbsp;</td>
                                                <td colspan="2"><input id="chkRegis" type="checkbox" name="checkbox" />&nbsp;我已点击阅读并同意<a href="law/install_law.html" target="_blank">《拾缘科技 服务协议》</a></td>
                                            </tr>
                                            <tr>
                                                <td colspan="4" align="center"><input type="button" value="注册"  id=“btnRegister”  class="btn btn-default btn-sm" style=" width:450px;height:45px;" /></td>
                                            </tr>
                                            <tr>
                                                <td colspan="4" align="right">已有帐号？马上<a href="toLogin">登录</a>&nbsp;&nbsp;<a href="../downLoad/qrcode.do">手机下载</a></td>
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
                                    <img src="../static/web/images/team-member-2.jpg" alt="">
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
		<!-- page-wrapper end -->
        <script type="text/javascript">
		//服务器校验
		function registe() {
			if (check()) {

				var loginname = $("#phone").val();
				var password = $("#pass").val();
				var repassword = $("#repass").val();
				var code = $("#yzm").val();
				//var code = loginname + "|" + password + "|" + $("#code").val();
				$.ajax({
					type : "POST",
					url : '/sy/web/regedit',
					data : {
						tSyPhone : loginname,
						tSyPassword : password
					},
					dataType : 'json',
					cache : false,
					success : function(data) {
						if ("sucess" == data.result) {
							alert("注册成功,请重新登录...");
						    window.location.href = "toLogin";
						} else if ("registed" == data.result) {
							//alert("该手机已经注册...");
						   	$("#phone").tips({
								side:2,
					            msg:'该手机已经注册.......',
					            bg:'#F80000',
					            time:2
					        });
							$("#phone").focus();					
						} else {							
							//alert("注册失败，请重新注册...");
						   	$("#phone").tips({
								side:2,
					            msg:'注册失败，请重新注册.......',
					            bg:'#F80000',
					            time:2
					        });
							$("#phone").focus();
						}
					}
				});
			}
		};

		$(document).ready(function() {
			
			init();
			
			$("#“btnRegister”").attr("disabled","true"); 
			
			$("#“btnRegister”").click(function(){
				registe();
			});
			
			$("#chkRegis").click(function(){								
				   if($("#chkRegis").prop("checked"))  
 				   {  
					   $("#“btnRegister”").removeAttr("disabled");
 				   }  
 				   else 
 				   {  
 					 $("#“btnRegister”").attr("disabled","true"); 
 				   }  
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
			$("#btnlogin").click(function(){
				window.location.href = "toLogin";
			});
			//注销
			$("#btnlogout").click(function(){
				logout();
				//window.location.href = "/sy";
			});
			
		});	



		
			//客户端校验
			function check() {

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
                     //alert("用户名不得为空");
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
			            msg:'确认密码不得为空.......',
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
	         	   	$("#pass").tips({
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

		</script>


	</body>
</html>