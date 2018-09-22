<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
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
			<header class="header fixed header-small clearfix">
				<div class="container">
					<div class="row">
						<div class="col-md-3">
							<!-- header-left start -->
							<!-- ================ -->
							<div class="header-left clearfix">
								<!-- logo -->
								<div class="logo">
									<a href="index.html"><img id="logo" src="../static/web/images/logo_red.png" alt="iDea"></a>
								</div>
								<!-- name-and-slogan -->
								<div class="site-slogan">
									irevest_拾缘科技
								</div>
							</div>
							<!-- header-left end -->
						</div>
						<div class="col-md-9">
							<!-- header-right start -->
							<!-- ================ -->
							<div class="header-right clearfix">
								<!-- main-navigation start -->
								<!-- ================ -->
								<div class="main-navigation animated">
									<!-- navbar start -->
									<!-- ================ -->
									<nav class="navbar navbar-default" role="navigation">
										<div class="container-fluid">
											<!-- Collect the nav links, forms, and other content for toggling -->
											<div class="collapse navbar-collapse" id="navbar-collapse-1">
												<ul class="nav navbar-nav navbar-right">
													<li>
														<a href="index.html">首页</a>
													</li>
                                                    <li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown">统计</a>
                                                        <ul class="dropdown-menu">
															<li><a href="#">注册用户量</a></li>
                                                            <li><a href="#">在线用户量</a></li>
														</ul>
													</li>
													<li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown">浏览</a>
														<ul class="dropdown-menu">
															<li><a href="people_list.html">寻人列表</a></li>
															<li><a href="pickup_list.html">拾物列表</a></li>
															<li><a href="loster_list.html">失物列表</a></li>
														</ul>
													</li>
                                                    <li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown">发布</a>
														<ul class="dropdown-menu">
                                                            <li><a href="pub_people_info.html">发布寻人</a></li>
                                                            <li><a href="pub_pickup_info.html">发布拾物</a></li>
                                                            <li><a href="pub_lost_info.html">发布失物</a></li>
														</ul>
													</li>
                                                    <li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown">用户</a>
														<ul class="dropdown-menu">
                                                                	<li><a href="toPerinfo">个人信息</a></li>
																	<li  class="active"><a href="toModifypwd">密码修改</a></li>
																	<li><a href="toAccountDetail">信用积分</a></li>
																	<li><a href="install_wallet.html">我的钱包</a></li>
                                                                    <li><a href="install_coupon.html">我的优惠券</a></li>
                                                                    <li><a href="install_law.html">法律条文</a></li>
																	<li><a href="toFault">故障反馈</a></li>
																
																</ul>
													</li>
                                                    <li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown">消息</a>
														<ul class="dropdown-menu">
                                                            <li><a href="info_pub_list.html">我的发布消息</a></li>
                                                            <li><a href="info_help_list.html">我的帮助消息</a></li>
                                                            <li><a href="info_sys_list.html">我的系统消息</a></li>
                                                            <li><a href="info_collect_list.html">我的收藏消息</a></li>
														</ul>
													</li>
												</ul>
											</div>
										</div>
									</nav>
									<!-- navbar end -->
								</div>
								<!-- main-navigation end -->
							</div>
							<!-- header-right end -->
						</div>
					</div>
				</div>
			</header>
			<!-- header end -->

			<!-- page-intro start-->
			<!-- ================ -->
			<div class="page-intro">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<ol class="breadcrumb">
								<li><i class="fa fa-home pr-10"></i><a href="index-3.html">首页</a></li>
								<li class="active">修改密码</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
			<!-- page-intro end -->

			<!-- main-container start -->
			<!-- ================ -->
			<section class="main-container">

				<div class="container">
					<div class="row">
                    	<!-- sidebar start -->
						<aside class="col-md-3">
                        	<div class="sidebar">
								<div class="block clearfix">
									<h3 class="title">个人中心</h3>
									<div class="separator"></div>
									<nav>
											<ul class="nav nav-pills nav-stacked">
                                          	<li class="active"><a href="toPerinfo">个人信息</a></li>
											<li><a href="toModifypwd">密码修改</a></li>
											<li ><a href="toAccountDetail">信用积分</a></li>
                                            <li><a href="install_wallet.html">我的钱包</a></li>
                                            <li><a href="toCoupon">我的优惠券</a></li>
                                            <li><a href="toLaw">法律条文</a></li>
                                            <li><a href="toFault">故障反馈</a></li>
                                
										</ul>
									</nav>
								</div>
							</div>
                            <div class="block clearfix">
									<h3 class="title">广告位</h3>
									<div class="separator"></div>
									<div class="image-box">
											<div class="overlay-container">
											<img src="../static/web/images/blog-sidebar.jpg" alt="">
											<div class="overlay">
												<div class="overlay-links">
													<a href="blog-post.html"><i class="fa fa-link"></i></a>
													<a href="images/blog-sidebar.jpg" class="popup-img-single" title="image title"><i class="fa fa-search-plus"></i></a>
												</div>
											</div>
										</div>
										<div class="image-box-body">
											<h3 class="title"><a href="blog-post.html">标题</a></h3>
											<p>广告招商中...</p>
											<a href="blog-post.html" class="link"><span>了解更多</span></a>
										</div>
									</div>
								</div>
								<div class="block clearfix">
									<h3 class="title">标签</h3>
									<div class="separator"></div>
									<div class="tags-cloud">
										<div class="tag">
											<a href="#">手机</a>
										</div>
										<div class="tag">
											<a href="#">电脑</a>
										</div>
										<div class="tag">
											<a href="#">钥匙</a>
										</div>
										<div class="tag">
											<a href="#">自行车</a>
										</div>
										<div class="tag">
											<a href="#">电瓶</a>
										</div>
										<div class="tag">
											<a href="#">书包</a>
										</div>
										<div class="tag">
											<a href="#">电瓶车</a>
										</div>
										<div class="tag">
											<a href="#">摩托车</a>
										</div>
										<div class="tag">
											<a href="#">键盘</a>
										</div>
										<div class="tag">
											<a href="#">书本</a>
										</div>
									</div>
								</div>
								<div class="block clearfix">
									<form role="search">
										<div class="form-group has-feedback">
											<input type="text" class="form-control" placeholder="搜索">
											<i class="fa fa-search form-control-feedback"></i>
										</div>
									</form>
								</div>
						</aside>
						<!-- sidebar end -->

						<!-- main start -->
						<!-- ================ -->
						<div class="main col-md-9">
                             <!-- page-title start -->
							<!-- ================ -->
							<h1 class="page-title margin-top-clear">密码修改</h1>
							<!-- page-title end -->
							<div class="space-bottom"></div>
							<fieldset>
								<legend>密码修改</legend>
								<form role="form" class="form-horizontal" id="payment-information">
									<div class="row">
										<div class="col-lg-9">
											<div class="form-group">
												<label for="paymentFirstName" class="col-md-3 control-label">旧密码</label>
												<div class="col-md-9">
													<div class="row">
														<div class="col-md-4">
															<input type="password" class="form-control" id="txt_old_pass" style=" width:500px; height:35px;"/>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label for="paymentLastName" class="col-md-3 control-label">新密码</label>
												<div class="col-md-9">
													<div class="row">
														<div class="col-md-4">
															<input type="password" class="form-control" id="txt_new_pass" style=" width:500px; height:35px;"/>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label">确认密码</label>
												<div class="col-md-9">
													<div class="row">
														<div class="col-md-4">
															<input type="password" class="form-control" id="txt_srue_pass" style=" width:500px; height:35px;"/>															
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</form>
							</fieldset>
							<div class="text-right">	
								<a href="#" id="btnOK" class="btn radius btn-white btn-sm">确认修改</a>
								<a href="#" id="btnReset" class="btn radius btn-white btn-sm">重置</a>
							</div>
						</div>
						<!-- main end -->
					</div>
				</div>
			</section>
			<!-- main-container end -->

			<!-- section start -->
			<!-- ================ -->
			<div class="section gray-bg object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="300">
				<div class="owl-carousel content-slider">
					<div class="testimonial">
						<div class="container">
							<div class="row">
								<div class="col-md-8 col-md-offset-2">
									<h2 class="title">失踪儿童</h2>
									<div class="testimonial-image">
										<img src="../static/web/images/testimonial-1.jpg" alt="Jane Doe" title="Jane Doe" class="img-circle">
									</div>
									<div class="testimonial-body">
										<p>失踪儿童的详细描述信息！失踪儿童的详细描述信息！失踪儿童的详细描述信息！失踪儿童的详细描述信息！失踪儿童的详细描述信息！</p>
										<div class="testimonial-info-1">- 小新</div>
										<div class="testimonial-info-2">10 岁</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="testimonial">
						<div class="container">
							<div class="row">
								<div class="col-md-8 col-md-offset-2">
									<h2 class="title">走失老人</h2>
									<div class="testimonial-image">
										<img src="../static/web/images/testimonial-2.jpg" alt="Jane Doe" title="Jane Doe" class="img-circle">
									</div>
									<div class="testimonial-body">
										<p>走失老人的详细描述信息！走失老人的详细描述信息！走失老人的详细描述信息！走失老人的详细描述信息！走失老人的详细描述信息！.</p>
										<div class="testimonial-info-1">- 老王</div>
										<div class="testimonial-info-2">76 岁</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="testimonial">
						<div class="container">
							<div class="row">
								<div class="col-md-8 col-md-offset-2">
									<h2 class="title">失踪儿童</h2>
									<div class="testimonial-image">
										<img src="../static/web/images/testimonial-3.jpg" alt="Jane Doe" title="Jane Doe" class="img-circle">
									</div>
									<div class="testimonial-body">
										<p>失踪儿童的详细描述信息！失踪儿童的详细描述信息！失踪儿童的详细描述信息！失踪儿童的详细描述信息！失踪儿童的详细描述信息！.</p>
										<div class="testimonial-info-1">- 小葵</div>
										<div class="testimonial-info-2">5 岁</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- section end -->

			<!-- footer start (Add "light" class to #footer in order to enable light footer) -->
			<!-- ================ -->
			<footer id="footer">

				<!-- .footer start -->
				<!-- ================ -->
				<div class="footer">
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<div class="footer-content">
									<div class="logo-footer"><img id="logo-footer" src="../static/web/images/logo_red_footer.png" alt=""></div>
									<div class="row">
										<div class="col-sm-6">
											<p>致力打造最好的平台，竭诚为您服务！</p>
											<ul class="social-links circle">
												<li class="facebook"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-facebook"></i></a></li>
												<li class="twitter"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-twitter"></i></a></li>
												<li class="googleplus"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-google-plus"></i></a></li>
												<li class="skype"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-skype"></i></a></li>
												<li class="linkedin"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-linkedin"></i></a></li>
											</ul>
										</div>
										<div class="col-sm-6">
											<ul class="list-icons">
												<li><i class="fa fa-map-marker pr-10"></i> 北京市昌平区</li>
												<li><i class="fa fa-phone pr-10"></i> +00 1234567890</li>
												<li><i class="fa fa-envelope-o pr-10"></i> irevest@sy.com</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="space-bottom hidden-lg hidden-xs"></div>
							<div class="col-sm-6 col-md-2">
								<div class="footer-content">
									<h2>链接</h2>
									<nav>
										<ul class="nav nav-pills nav-stacked">
											<li><a href="index.html">首页</a></li>
											<li class="active"><a href="index.html#about">关于</a></li>
											<li><a href="index.html#dynamic">动态</a></li>
											<li><a href="index.html#footer">联系我们</a></li>
											<li><a href="index-3.html">拾缘</a></li>
                                            <li><a href="qrcode.html">下载</a></li>
										</ul>
									</nav>
								</div>
							</div>
							<div class="col-sm-6 col-md-3 col-md-offset-1">
								<div class="footer-content">
									<h2>友情链接</h2>
									<div class="gallery row">
										<div class="gallery-item col-xs-4">
											<div class="overlay-container">
												<img src="../static/web/images/gallery-1.jpg" alt="">
												<a href="portfolio-item.html" class="overlay small">
													<i class="fa fa-link"></i>
												</a>
											</div>
										</div>
										<div class="gallery-item col-xs-4">
											<div class="overlay-container">
												<img src="../static/web/images/gallery-2.jpg" alt="">
												<a href="portfolio-item.html" class="overlay small">
													<i class="fa fa-link"></i>
												</a>
											</div>
										</div>
										<div class="gallery-item col-xs-4">
											<div class="overlay-container">
												<img src="../static/web/images/gallery-3.jpg" alt="">
												<a href="portfolio-item.html" class="overlay small">
													<i class="fa fa-link"></i>
												</a>
											</div>
										</div>
										<div class="gallery-item col-xs-4">
											<div class="overlay-container">
												<img src="../static/web/images/gallery-4.jpg" alt="">
												<a href="portfolio-item.html" class="overlay small">
													<i class="fa fa-link"></i>
												</a>
											</div>
										</div>
										<div class="gallery-item col-xs-4">
											<div class="overlay-container">
												<img src="../static/web/images/gallery-5.jpg" alt="">
												<a href="portfolio-item.html" class="overlay small">
													<i class="fa fa-link"></i>
												</a>
											</div>
										</div>
										<div class="gallery-item col-xs-4">
											<div class="overlay-container">
												<img src="../static/web/images/gallery-6.jpg" alt="">
												<a href="portfolio-item.html" class="overlay small">
													<i class="fa fa-link"></i>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="space-bottom hidden-lg hidden-xs"></div>
					</div>
				</div>
				<!-- .footer end -->

				<!-- .subfooter start -->
				<!-- ================ -->
				<div class="subfooter">
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<p>Copyright &copy; 2015.Company name All rights reserved.</p>
							</div>
							<div class="col-md-6">
								<nav class="navbar navbar-default" role="navigation"> 
									<div class="collapse navbar-collapse" id="navbar-collapse-2">
										<ul class="nav navbar-nav">
											<li><a href="index.html">首页</a></li>
											<li><a href="index.html#about">关于</a></li>
											<li><a href="index.html#dynamic">动态</a></li>
											<li><a href="index.html#footer">联系我们</a></li>
											<li><a href="index-3.html">拾缘</a></li>
                                            <li><a href="qrcode.html">下载</a></li>
										</ul>
									</div>
								</nav>
							</div>
						</div>
					</div>
				</div>
				<!-- .subfooter end -->

			</footer>
			<!-- footer end -->

		</div>

	<script type="text/javascript">
		//服务器校验
		function modify() {
			
			if (check()) {
				var txt_old_pass = $("#txt_old_pass").val();
				var txt_new_pass = $("#txt_new_pass").val();
				$.ajax({
					type : "POST",
					url : '/sy/web/modifypwd',
					data : {
						txtoldpass : txt_old_pass,
						txtnewpass : txt_new_pass
					},
					dataType : 'json',
					cache : false,
					success : function(data) {
						if ("sucess" == data.result) {
							alert("密码修改成功...");
						   	$("#btnOK").tips({
								side:2,
					            msg:'密码修改成功.......',
					            bg:'#F80000',
					            time:2
					        });
						    //window.location.href = "toLogin";
						}else if("pwdfault" == data.result) { 
							//alert("旧密码输入错误，请重新输入...");
						   	$("#txt_old_pass").tips({
								side:2,
					            msg:'旧密码输入错误，请重新输入.......',
					            bg:'#F80000',
					            time:2
					        });	
							$("#txt_old_pass").val("");
							$("#txt_old_pass").focus();
						}else {							
							//alert("密码修改失败，请重新修改...");
						   	$("#txt_old_pass").tips({
								side:2,
					            msg:'密码修改失败，请重新修改.......',
					            bg:'#F80000',
					            time:2
					        });	
							clear();
						}
					}
				});
			}
		};
		
		$(document).ready(function() {
					
			init();
			
			$("#btnOK").click(function(){
				modify();
			});
			
			$("#btnReset").click(function(){
				clear();
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
			});
			
		});	
		
		
		//重置
		function clear(){
			$("#txt_old_pass").val("");
			$("#txt_new_pass").val("");
			$("#txt_srue_pass").val("");
		
		}
			//客户端校验
			function check() {

				if ($("#txt_old_pass").val() == "" || $("#txt_old_pass").val() == " " ) {
                    // alert("旧密码不得为空");
         		   	$("#txt_old_pass").tips({
						side:2,
			            msg:'旧密码不得为空.......',
			            bg:'#F80000',
			            time:2
			        });
					$("#txt_old_pass").focus();
					return false;
				}; 
				if ($("#txt_new_pass").val() == "" || $("#txt_new_pass").val() == " ") {
                    //alert("密码不得为空");
        		   	$("#txt_new_pass").tips({
						side:2,
			            msg:'新密码不得为空.......',
			            bg:'#F80000',
			            time:2
			        });
					$("#txt_new_pass").focus();
					return false;
				};
				if ($("#txt_srue_pass").val() == "" || $("#txt_srue_pass").val() == " ") {
                    //alert("确认密码不得为空");
            	   	$("#txt_srue_pass").tips({
						side:2,
			            msg:'确认密码不得为空.......',
			            bg:'#F80000',
			            time:2
			        });
					$("#txt_srue_pass").focus();
					return false;
				};
	 	       if(!($("#txt_srue_pass").val() == $("#txt_new_pass").val())){
	         	   	$("#txt_srue_pass").tips({
						side:2,
			            msg:'新密码和确认密码输入不一致，请重新输入.......',
			            bg:'#F80000',
			            time:2
			        });
               	    $("#txt_srue_pass").val("");
               	    $("#txt_new_pass").val("");
  	 				$("#txt_new_pass").focus();
  	 				return false;
               }
	 	       if(($("#txt_old_pass").val() == $("#txt_new_pass").val())){
	         	   	$("#txt_new_pass").tips({
						side:2,
			            msg:'旧密码和新密码输入一致，请重新输入.......',
			            bg:'#F80000',
			            time:5
			        });
              	    $("#txt_srue_pass").val("");
              	    $("#txt_new_pass").val("");
 	 				$("#txt_new_pass").focus();
 	 				return false;
              }
	 	       
	 			return true;
	 		}
	 		</script>
</body>
</html>
