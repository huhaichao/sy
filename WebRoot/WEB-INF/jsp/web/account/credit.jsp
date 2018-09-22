<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>积分</title>
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
                <%@ include file="../../../../web/statichtml/headtop.html"%> 
			</div>
			<!-- header-top end -->

			<!-- header start (remove fixed class from header in order to disable fixed navigation mode) -->
			<!-- ================ --> 
			<header class="header fixed header-small clearfix">					
				 <%@ include file="../../../../web/statichtml/header.html"%> 
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
								<li class="active">信用积分</li>
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
													<a href="../static/web/images/blog-sidebar.jpg" class="popup-img-single" title="image title"><i class="fa fa-search-plus"></i></a>
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
                             <h1 class="page-title">我的积分</h1>
                            <hr/>
                            <!-- blogpost start -->
							<article class="clearfix blogpost object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="200">
								<div class="blogpost-body">
									<div class="post-info">
										<img src="../static/web/images/gallery-6.jpg" alt=""/>
									</div>
									<div class="blogpost-content">
										<header>
											<h3 class="title"><i class="fa fa-database"></i> 我的积分</h3>
                                            <div id="record"><h4 class="title">&nbsp;100 分</h4></div>
										</header>
                                        <p>&nbsp;<a href="#">查看规则</a></p>
									</div>
								</div>
								<footer class="clearfix">
									<ul class="links pull-left">
                                        <li><i class="glyphicon glyphicon-play"></i> <a id="down" href="#">处罚记录</a> | <a id="up" href="#">奖励记录</a> | <a id="all" href="#">所有记录</a> </li>
									</ul>
								</footer>
                                <hr/>
                                <form action="#">
                                    <table class="table" id="integralTbl">
                                    <thead>
                                        <tr>
                                            <th colspan="5">成长记录</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>日期</td>
                                            <td>类型</td>
                                            <td>积分</td>
                                            <td>操作</td>
                                        </tr>
                                        <tr>
                                            <td>2017-01-09</td>
                                            <td>帮助他人</td>
                                            <td>5</td>
                                            <td><a href="#">删除</a></td>
                                        </tr>
                                        <tr>
                                            <td>2017-01-08</td>
                                            <td>恶意刷单</td>
                                            <td>-10</td>
                                            <td><a href="#">删除</a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form>
							</article>
							<!-- blogpost end -->
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
			<footer id="footer"  >
			   <%@ include file="../../../../web/statichtml/footer.html"%>  		   
			</footer>
			<!-- footer end -->

		</div>
		<script type="text/javascript">
		var flag=2;
		<!-- page-wrapper end -->
		$(document).ready(function() {
		    //$('#header').load('../statichtml/header.html');  
	        //$('#footer').load('../statichtml/footer.html'); 	
	        init();
	        getIntegralList(2);//默认加载所有
	        
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
			//加分
			$("#up").on("click",function(){    
			     //alert($(this).text());
			     flag=1;
			     getIntegralList(1);
			 });
			//扣分
			$("#down").on("click",function(){    
			     //alert($(this).text());
			     flag=0;
			     getIntegralList(0);
			 });
			//所有
			$("#all").on("click",function(){    
			     //alert($(this).text());
			     flag=2;
			     getIntegralList(2);
			 });
			
			//table某一行选择
			//$("table").on("click",function(){
				 //alert($this.cells[2].innerHTML);  
				  // var valueTd=document .getElementById ("tbl").rows [1].cells[2];
			      //  txt.value=valueTd.innerHTML ;
				 //alert($this.().eq(2).html());
				 //alert($this.rows[1].cells[2]); 
			// });
			
	    });
		
		function delIntegraInfo(id,type){
	 		$.ajax({
				type : "POST",
				url : '/sy/web/delIntegral',
				data : {
					T_SY_INTEGRAL_ID : id,
					T_SY_INTEGARAL_TYPE : type
				},
				dataType : 'json',
				cache : false,
				success : function(data) {
					if ("success" == data.result) {
						getIntegralList(flag);						
					} else {							
						$("#integralTbl").tips({
							side:2,
				            msg:'删除积分信息失败.......',
				            bg:'#F80000',
				            time:6
			            });	
					}
				}
			 })	 
		}
		
			//根据类型获取积分信息
         function getIntegralList(type){
     		$.ajax({
				type : "POST",
				url : '/sy/web/getIntegral',
				data : {
					T_SY_INTEGARAL_TYPE : type
				},
				dataType : 'json',
				cache : false,
				success : function(data) {
					if ("success" == data.result) {
						$("table tbody").html();
						$("table tbody").html(data.list);
						$("#record").html(data.record+"分");
					} else {							
						$("#integralTbl").tips({
							side:2,
				            msg:'查询积分信息失败.......',
				            bg:'#F80000',
				            time:6
			            });	
					}
				}
			 })	       	   
          }
			
		
			</script>	
	</body>
</html>