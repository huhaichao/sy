<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<title>拾缘科技_拾物列表</title>
		<meta name="description" content="拾缘科技平台">
		<meta name="author" content="htmlcoder.me">

		<!-- Mobile Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- Favicon -->
		<link rel="shortcut icon" href="images/favicon.ico">

		<!-- Web Fonts -->
		 
		 

		<!-- Bootstrap core CSS -->
		<link href="../../../../static/web/bootstrap/css/bootstrap.css" rel="stylesheet">

		<!-- Font Awesome CSS -->
		<link href="../../../../static/web/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">

		<!-- Fontello CSS -->
		<link href="../../../../static/web/fonts/fontello/css/fontello.css" rel="stylesheet">

		<!-- Plugins -->
		<link href="../../../../static/web/plugins/magnific-popup/magnific-popup.css" rel="stylesheet">
		<link href="../../../../static/web/css/animations.css" rel="stylesheet">
		<link href="../../../../static/web/plugins/owl-carousel/owl.carousel.css" rel="stylesheet">

		<!-- iDea core CSS file -->
		<link href="../../../../static/web/css/style.css" rel="stylesheet">

		<!-- Color Scheme (In order to change the color scheme, replace the red.css with the color scheme that you prefer)-->
		<link href="../../../../static/web/css/skins/orange.css" rel="stylesheet">

		<!-- Custom css --> 
		<link href="../../../../static/web/css/custom.css" rel="stylesheet">
        
        <!-- 侧边导航 start -->
		<link href="../../../../static/web/css/zzsc.css" rel="stylesheet" type="text/css"/>
		<script type="text/javascript" src="../../../../static/web/js/popwin.js"></script> 
		<!-- 侧边导航 end --> 
	</head>

	<!-- body classes: 
			"boxed": boxed layout mode e.g. <body class="boxed">
			"pattern-1 ... pattern-9": background patterns for boxed layout mode e.g. <body class="boxed pattern-1"> 
	-->
	<body>
    	<div id="moquu_wxin" class="moquu_wxin"><a href="../../../../static/web/javascript:alert('iOS');">iOS<div class="moquu_wxinh"></div></a></div>
		<div id="moquu_wshare" class="moquu_wshare"><a href="../../../../static/web/javascript:alert('android');">android<div class="moquu_wshareh"></div></a></div>
		<div id="moquu_wmaps" class="moquu_wmaps"><a href="../../../../static/web/javascript:alert('电话');">电话<div class='moquu_wmapsh'></div></a></div>
		<a id="moquu_top" href="../../../../static/web/#header-top-second"></a>
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
								<li><i class="fa fa-home pr-10"></i><a href="../../../../static/web/index-3.html">首页</a></li>
								<li class="active">寻人列表</li>
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
									<h3 class="title">发布列表</h3>
									<div class="separator"></div>
									<nav>
										<ul class="nav nav-pills nav-stacked">
											<li class="active"><a href="../../../../static/web/people_list.html">寻人列表</a></li>
											<li><a href="../../../../static/web/pickup_list.html">拾物列表</a></li>
											<li><a href="../../../../static/web/loster_list.html">失物列表</a></li>
										</ul>
									</nav>
								</div>
							</div>
                            <div class="block clearfix">
									<h3 class="title">广告位</h3>
									<div class="separator"></div>
									<div class="image-box">
										<div class="overlay-container">
											<img src="../../../../static/web/images/blog-sidebar.jpg" alt="">
											<div class="overlay">
												<div class="overlay-links">
													<a href="../../../../static/web/blog-post.html"><i class="fa fa-link"></i></a>
													<a href="../../../../static/web/images/blog-sidebar.jpg" class="popup-img-single" title="image title"><i class="fa fa-search-plus"></i></a>
												</div>
											</div>
										</div>
										<div class="image-box-body">
											<h3 class="title"><a href="../../../../static/web/blog-post.html">标题</a></h3>
											<p>广告招商中...</p>
											<a href="../../../../static/web/blog-post.html" class="link"><span>了解更多</span></a>
										</div>
									</div>
								</div>
								<div class="block clearfix">
									<h3 class="title">标签</h3>
									<div class="separator"></div>
									<div class="tags-cloud">
										<div class="tag">
											<a href="../../../../static/web/#">手机</a>
										</div>
										<div class="tag">
											<a href="../../../../static/web/#">电脑</a>
										</div>
										<div class="tag">
											<a href="../../../../static/web/#">钥匙</a>
										</div>
										<div class="tag">
											<a href="../../../../static/web/#">自行车</a>
										</div>
										<div class="tag">
											<a href="../../../../static/web/#">电瓶</a>
										</div>
										<div class="tag">
											<a href="../../../../static/web/#">书包</a>
										</div>
										<div class="tag">
											<a href="../../../../static/web/#">电瓶车</a>
										</div>
										<div class="tag">
											<a href="../../../../static/web/#">摩托车</a>
										</div>
										<div class="tag">
											<a href="../../../../static/web/#">键盘</a>
										</div>
										<div class="tag">
											<a href="../../../../static/web/#">书本</a>
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
                        	 <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion-faq" href="../../../../static/web/#collapseOne" class="collapsed">
                                            <i class="glyphicon glyphicon-search"></i> 高级搜索
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <form class="form-inline">
                                             <table class="table">
                                                <tbody>
                                                    <tr>
                                                        <td>用户</td>
                                                        <td><input type="text" class="form-control" id="txt_user"  style="height:27px;"/></td>
                                                        <td>日期</td>
                                                        <td><input type="text" class="form-control" id="txt_date"  style="height:27px;"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td>状态</td>
                                                        <td>
                                                        	<select name="sel_statu" style="height:27px; width:198px;">
                                                            	<option value="1">全部</option>
                                                                <option value="2">完成</option>
                                                                <option value="3">有效</option>
                                                                <option value="4">激活</option>
                                                            </select>
                                                        </td>
                                                        <td>地域</td>
                                                        <td><input type="text" class="form-control" id="txt_dy"  style="height:27px;"/></td>
                                                    </tr>
                                                    <hr/>
                                                    <tr>
                                                        <td>物品类型</td>
                                                        <td>
                                                        	<select name="sel_wplx" style="height:27px; width:198px;">
                                                            	<option value="1">全部</option>
                                                                <option value="2">电子产品</option>
                                                                <option value="3">生活用品</option>
                                                            </select>
                                                        </td>
                                                        <td>性别</td>
                                                        <td>
                                                        	<select name="sel_sex" style="height:27px; width:198px;">
                                                            	<option value="1">全部</option>
                                                                <option value="2">男</option>
                                                                <option value="3">女</option>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>年龄</td>
                                                        <td>
                                                        	<select name="sel_age" style="height:27px; width:198px;">
                                                            	<option value="1">全部</option>
                                                                <option value="2">18-30</option>
                                                                <option value="3">30-50</option>
                                                                <option value="4">50-70</option>
                                                                <option value="5">70-99</option>
                                                            </select>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" style="text-align:center;">
                                                        	<a href="../../../../static/web/#" class="btn radius btn-white btn-sm">搜索</a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </form>
                                    </div>
                                </div>
							</div>
                             <table class="table table-striped">
								<thead>
									<tr>
										<th>#</th>
										<th>First Name</th>
										<th>Last Name</th>
										<th>Username</th>
                                        <th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
									<tr>
										<td>2</td>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
									<tr>
										<td>3</td>
										<td>Larry</td>
										<td>the Bird</td>
										<td>@twitter</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
                                    <tr>
										<td>1</td>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
									<tr>
										<td>2</td>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
									<tr>
										<td>3</td>
										<td>Larry</td>
										<td>the Bird</td>
										<td>@twitter</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
                                    <tr>
										<td>1</td>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
									<tr>
										<td>2</td>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
									<tr>
										<td>3</td>
										<td>Larry</td>
										<td>the Bird</td>
										<td>@twitter</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
                                    <tr>
										<td>1</td>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
									<tr>
										<td>2</td>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
									<tr>
										<td>3</td>
										<td>Larry</td>
										<td>the Bird</td>
										<td>@twitter</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
                                    <tr>
										<td>1</td>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
									<tr>
										<td>2</td>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
									<tr>
										<td>3</td>
										<td>Larry</td>
										<td>the Bird</td>
										<td>@twitter</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
                                    <tr>
										<td>1</td>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
									<tr>
										<td>2</td>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
									<tr>
										<td>3</td>
										<td>Larry</td>
										<td>the Bird</td>
										<td>@twitter</td>
                                        <td><a href="../../../../static/web/people_detail.html">明细</a></td>
									</tr>
								</tbody>
							</table>
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
										<img src="../../../../static/web/images/testimonial-1.jpg" alt="Jane Doe" title="Jane Doe" class="img-circle">
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
										<img src="../../../../static/web/images/testimonial-2.jpg" alt="Jane Doe" title="Jane Doe" class="img-circle">
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
										<img src="../../../../static/web/images/testimonial-3.jpg" alt="Jane Doe" title="Jane Doe" class="img-circle">
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
		<script type="text/javascript" src="../../../../static/web/plugins/jquery.js"></script>
		<script type="text/javascript" src="../../../../static/web/bootstrap/js/bootstrap.min.js"></script>

		<!-- Modernizr javascript -->
		<script type="text/javascript" src="../../../../static/web/plugins/modernizr.js"></script>

		<!-- Isotope javascript -->
		<script type="text/javascript" src="../../../../static/web/plugins/isotope/isotope.pkgd.min.js"></script>

		<!-- Owl carousel javascript -->
		<script type="text/javascript" src="../../../../static/web/plugins/owl-carousel/owl.carousel.js"></script>

		<!-- Magnific Popup javascript -->
		<script type="text/javascript" src="../../../../static/web/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>

		<!-- Appear javascript -->
		<script type="text/javascript" src="../../../../static/web/plugins/jquery.appear.js"></script>

		<!-- Sharrre javascript -->
		<script type="text/javascript" src="../../../../static/web/plugins/jquery.sharrre.js"></script>

		<!-- Count To javascript -->
		<script type="text/javascript" src="../../../../static/web/plugins/jquery.countTo.js"></script>

		<!-- Parallax javascript -->
		<script src="../../../../static/web/plugins/jquery.parallax-1.1.3.js"></script>

		<!-- Contact form -->
		<script src="../../../../static/web/plugins/jquery.validate.js"></script>

		<!-- Initialization of Plugins -->
		<script type="text/javascript" src="../../../../static/web/js/template.js"></script>

		<!-- Custom Scripts -->
		<script type="text/javascript" src="../../../../static/web/js/custom.js"></script>

	</body>
</html>
