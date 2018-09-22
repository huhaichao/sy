<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<title>拾缘科技_拾物明细</title>
		<meta name="description" content="拾缘科技平台">
		<meta name="author" content="htmlcoder.me">

		<!-- Mobile Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- Favicon -->
		<link rel="shortcut icon" href="images/favicon.ico">

		<!-- Web Fonts -->
		 
		 

		<!-- Bootstrap core CSS -->
		<link href="bootstrap/css/bootstrap.css" rel="stylesheet">

		<!-- Font Awesome CSS -->
		<link href="fonts/font-awesome/css/font-awesome.css" rel="stylesheet">

		<!-- Fontello CSS -->
		<link href="fonts/fontello/css/fontello.css" rel="stylesheet">

		<!-- Plugins -->
		<link href="plugins/magnific-popup/magnific-popup.css" rel="stylesheet">
		<link href="css/animations.css" rel="stylesheet">
		<link href="plugins/owl-carousel/owl.carousel.css" rel="stylesheet">

		<!-- iDea core CSS file -->
		<link href="css/style.css" rel="stylesheet">

		<!-- Color Scheme (In order to change the color scheme, replace the red.css with the color scheme that you prefer)-->
		<link href="css/skins/orange.css" rel="stylesheet">

		<!-- Custom css --> 
		<link href="css/custom.css" rel="stylesheet">
        
        <!-- 侧边导航 start -->
		<link href="css/zzsc.css" rel="stylesheet" type="text/css"/>
		<script type="text/javascript" src="js/popwin.js"></script> 
		<!-- 侧边导航 end --> 
	</head>

	<!-- body classes: 
			"boxed": boxed layout mode e.g. <body class="boxed">
			"pattern-1 ... pattern-9": background patterns for boxed layout mode e.g. <body class="boxed pattern-1"> 
	-->
	<body>
    	<div id="moquu_wxin" class="moquu_wxin"><a href="javascript:alert('iOS');">iOS<div class="moquu_wxinh"></div></a></div>
		<div id="moquu_wshare" class="moquu_wshare"><a href="javascript:alert('android');">android<div class="moquu_wshareh"></div></a></div>
		<div id="moquu_wmaps" class="moquu_wmaps"><a href="javascript:alert('电话');">电话<div class='moquu_wmapsh'></div></a></div>
		<a id="moquu_top" href="#header-top-second"></a>
		<!-- scrollToTop -->
		<!-- ================ -->
		<div class="scrollToTop"><i class="icon-up-open-big"></i></div>

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
								<li class="active"><a href="pickup_list.html">拾物列表</a></li>
                                <li class="active">拾物明细</li>
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

						<!-- main start -->
						<!-- ================ -->
						<div class="main col-md-12">

							<!-- page-title start -->
							<!-- ================ -->
							<h1 class="page-title margin-top-clear">手机</h1>
							<!-- page-title end -->

							<div class="row">
								<div class="col-md-4">
									<!-- Nav tabs -->
									<ul class="nav nav-pills white space-top" role="tablist">
										<li class="active"><a href="#product-images" role="tab" data-toggle="tab" title="images"><i class="fa fa-camera pr-5"></i> 照片</a></li>
										<!--<li><a href="#product-video" role="tab" data-toggle="tab" title="video"><i class="fa fa-video-camera pr-5"></i> Video</a></li> -->
									</ul>

									<!-- Tab panes start-->
									<div class="tab-content clear-style">
										<div class="tab-pane active" id="product-images">
											<div class="owl-carousel content-slider-with-controls-bottom">
												<div class="overlay-container">
													<img src="images/product-1-1.png" alt="">
													<a href="images/product-1-1.png" class="popup-img overlay" title="image title"><i class="fa fa-search-plus"></i></a>
												</div>
												<div class="overlay-container">
													<img src="images/product-1-2.png" alt="">
													<a href="images/product-1-2.png" class="popup-img overlay" title="image title"><i class="fa fa-search-plus"></i></a>
												</div>
												<div class="overlay-container">
													<img src="images/product-1-3.png" alt="">
													<a href="images/product-1-3.png" class="popup-img overlay" title="image title"><i class="fa fa-search-plus"></i></a>
												</div>
											</div>
										</div>
										<!--<div class="tab-pane" id="product-video">
											<div class="embed-responsive embed-responsive-16by9">
												<iframe class="embed-responsive-item" src="//player.vimeo.com/video/29198414?byline=0&amp;portrait=0"></iframe>
												<p><a href="http://vimeo.com/29198414">Introducing Vimeo Music Store</a> 
                                                from <a href="http://vimeo.com/staff">Vimeo Staff</a> 
                                                on <a href="https://vimeo.com">Vimeo</a>.</p>
											</div>
										</div> -->
									</div>
									<!-- Tab panes end-->
									<hr>
                                    <!--<div>
                                        <a href="#" class="btn radius btn-light-gray btn-sm">联系人</a>
                                        <a href="#" class="btn radius btn-light-gray btn-sm">聊天室</a>
                                        <a href="#" class="btn radius btn-light-gray btn-sm">确认归还</a>
                                    </div> -->
								</div>

								<!-- product side start -->
								<aside class="col-md-8">
									<div class="sidebar">
										<div class="side product-item vertical-divider-left">
											<div class="tabs-style-2">
												<!-- Nav tabs -->
												<ul class="nav nav-tabs" role="tablist">
													<li class="active"><a href="#h2tab1" role="tab" data-toggle="tab"><i class="fa fa-file-text-o pr-5"></i>详细信息</a></li>
													<li><a href="#h2tab2" role="tab" data-toggle="tab"><i class="fa fa-files-o pr-5"></i>个人信息</a></li>
													<li><a href="#h2tab3" role="tab" data-toggle="tab"><i class="fa fa-star pr-5"></i>备用</a></li>
												</ul>
												<!-- Tab panes -->
												<div class="tab-content padding-top-clear padding-bottom-clear">
													<div class="tab-pane fade in active" id="h2tab1">
														<h4 class="space-top">iphone 7 64G</h4>
														<hr>
                                                        <dl class="dl-horizontal">
															<dt>物品类型</dt>
															<dd>电子产品</dd>
															<dt>拾物日期</dt>
															<dd>2017-01-07</dd>
															<dt>悬赏金额</dt>
															<dd>￥100.00</dd>
															<dt>拾物地点</dt>
															<dd>北京市昌平区回龙观东大街</dd>
                                                            <dt>物品描述</dt>
															<dd>iphone 7 64G，白色！</dd>
														</dl>
														<hr>
													</div>
													<div class="tab-pane fade" id="h2tab2">
														<h4 class="space-top">马小云</h4>
														<hr>
														<dl class="dl-horizontal">
															<dt>姓名</dt>
															<dd>马小云</dd>
															<dt>性别</dt>
															<dd>男</dd>
															<dt>出生日期</dt>
															<dd>1976-09-18</dd>
															<dt>身份证号</dt>
															<dd>13042919760001</dd>
															<dt>电子邮箱</dt>
															<dd>mxy@sy.com</dd>
															<dt>手机号</dt>
															<dd>18612991000</dd>
															<dt>积分</dt>
															<dd>100</dd>
														</dl>
														<hr>
													</div>
													<div class="tab-pane fade" id="h2tab3">
														<h4 class="space-top">备用</h4>
														<hr>
													</div>
												</div>
											</div>
										</div>
									</div>
								</aside>
								<!-- product side end -->
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
										<img src="images/testimonial-1.jpg" alt="Jane Doe" title="Jane Doe" class="img-circle">
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
										<img src="images/testimonial-2.jpg" alt="Jane Doe" title="Jane Doe" class="img-circle">
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
										<img src="images/testimonial-3.jpg" alt="Jane Doe" title="Jane Doe" class="img-circle">
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
		<!-- page-wrapper end -->

		<!-- JavaScript files placed at the end of the document so the pages load faster
		================================================== -->
		<!-- Jquery and Bootstap core js files -->
		<script type="text/javascript" src="plugins/jquery.min.js"></script>
		<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

		<!-- Modernizr javascript -->
		<script type="text/javascript" src="plugins/modernizr.js"></script>

		<!-- Isotope javascript -->
		<script type="text/javascript" src="plugins/isotope/isotope.pkgd.min.js"></script>

		<!-- Owl carousel javascript -->
		<script type="text/javascript" src="plugins/owl-carousel/owl.carousel.js"></script>

		<!-- Magnific Popup javascript -->
		<script type="text/javascript" src="plugins/magnific-popup/jquery.magnific-popup.min.js"></script>

		<!-- Appear javascript -->
		<script type="text/javascript" src="plugins/jquery.appear.js"></script>

		<!-- Sharrre javascript -->
		<script type="text/javascript" src="plugins/jquery.sharrre.js"></script>

		<!-- Count To javascript -->
		<script type="text/javascript" src="plugins/jquery.countTo.js"></script>

		<!-- Parallax javascript -->
		<script src="plugins/jquery.parallax-1.1.3.js"></script>

		<!-- Contact form -->
		<script src="plugins/jquery.validate.js"></script>

		<!-- Initialization of Plugins -->
		<script type="text/javascript" src="js/template.js"></script>

		<!-- Custom Scripts -->
		<script type="text/javascript" src="js/custom.js"></script>

	</body>
</html>
