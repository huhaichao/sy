<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>拾缘</title>
		<meta name="description" content="拾缘科技平台">
		<meta name="author" content="htmlcoder.me">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- Favicon -->
		<link rel="shortcut icon" href="static/web/images/favicon.ico">

		<!-- Web Fonts -->
        
		<!-- Bootstrap core CSS -->
		<link href="static/web/bootstrap/css/bootstrap.css" rel="stylesheet">

		<!-- Font Awesome CSS -->
		<link href="static/web/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">

		<!-- Fontello CSS -->
		<link href="static/web/fonts/fontello/css/fontello.css" rel="stylesheet">

		<!-- Plugins -->
		<link href="static/web/plugins/rs-plugin/css/settings.css" media="screen" rel="stylesheet">
		<link href="static/web/plugins/rs-plugin/css/extralayers.css" media="screen" rel="stylesheet">
		<link href="static/web/plugins/magnific-popup/magnific-popup.css" rel="stylesheet">
		<link href="static/web/css/animations.css" rel="stylesheet">
		<link href="static/web/plugins/owl-carousel/owl.carousel.css" rel="stylesheet">

		<!-- iDea core CSS file -->
		<link href="static/web/css/style.css" rel="stylesheet">

		<!-- Color Scheme (In order to change the color scheme, replace the red.css with the color scheme that you prefer)-->
		<link href="static/web/css/skins/orange.css" rel="stylesheet">

		<!-- Custom css --> 
		<link href="static/web/css/custom.css" rel="stylesheet">
        
        <!-- 侧边导航 start -->
		<link href="static/web/css/zzsc.css" rel="stylesheet" type="text/css"/>
		<script type="text/javascript" src="static/web/js/popwin.js"></script> 
		<!-- 侧边导航 end --> 
				<!-- page-wrapper end -->

		<!-- JavaScript files placed at the end of the document so the pages load faster
		================================================== -->
		<!-- Jquery and Bootstap core js files -->
		<script type="text/javascript" src="static/web/plugins/jquery.min.js"></script>
		<script type="text/javascript" src="static/web/bootstrap/js/bootstrap.min.js"></script>

		<!-- Modernizr javascript -->
		<script type="text/javascript" src="static/web/plugins/modernizr.js"></script>

		<!-- jQuery REVOLUTION Slider  -->
		<script type="text/javascript" src="static/web/plugins/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
		<script type="text/javascript" src="static/web/plugins/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

		<!-- Isotope javascript -->
		<script type="text/javascript" src="static/web/plugins/isotope/isotope.pkgd.min.js"></script>

		<!-- Owl carousel javascript -->
		<script type="text/javascript" src="static/web/plugins/owl-carousel/owl.carousel.js"></script>

		<!-- Magnific Popup javascript -->
		<script type="text/javascript" src="static/web/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>

		<!-- Appear javascript -->
		<script type="text/javascript" src="static/web/plugins/jquery.appear.js"></script>

		<!-- Count To javascript -->
		<script type="text/javascript" src="static/web/plugins/jquery.countTo.js"></script>

		<!-- Parallax javascript -->
		<script src="static/web/plugins/jquery.parallax-1.1.3.js"></script>

		<!-- Contact form -->
		<script src="static/web/plugins/jquery.validate.js"></script>

		<!-- Initialization of Plugins -->
		<script type="text/javascript" src="static/web/js/template.js"></script>

		<!-- Custom Scripts -->
		<script type="text/javascript" src="static/web/js/custom.js"></script>
		
        <script type="text/javascript">

		$(document).ready(function() {
		    map_load();
		
		   	$.ajax({
					type : "POST",
					url : '/sy/web/hasLogin',
					data : {syhome:'true'},
					dataType : 'json',
					cache : false,
					success : function(data) {
						if ("login" == data.result) {
						   $('#navbar-collapse-1').empty();
			               $('#navbar-collapse-1').append(data.innerhtml);
			               $("#navbar-collapse-3").attr("style","display:none");//隐藏div
			               $("#navbar-collapse-2").attr("style","display:block");//显示div	
			               
                           $("#userHome2").text(data.syname);
			               $("#collapse2").show();//显示div		               
			               $("#collapse3").hide();//隐藏div	
			               $("#userMenu").text(data.syname);
			               $("#homeMenu").show();//显示div		               
			               $("#homeMenu1").hide();//隐藏div	
			               $("#userLink").text(data.syname);
			               $("#linkMenu").show();//显示div		               
			               $("#linkMenu1").hide();//隐藏div	
						}else{	
						    
						   $("#linkMenu1").show();//显示div		               
			               $("#linkMenu").hide();//隐藏div	 
			               
			                             		                             		               
			               $("#homeMenu1").show();//显示div		               
			               $("#homeMenu").hide();//隐藏div
			               
			               $("#collapse3").show();//显示div		               
			               $("#collapse2").hide();//隐藏div	
						}
					}
				});		  
		});	
		

                         function map_init() {
                             var map = new BMap.Map("mapDiv"); // 创建Map实例 
                             var mIcon = new BMap.Icon("static/web/images/location_fire.png", new BMap.Size(28, 40));
                             var localSearch = new BMap.LocalSearch(map);
                             map.clearOverlays();//清空原来的标注
                             var keyword = "中行海鹰大厦";
                             var person = "星星";
                             localSearch.setSearchCompleteCallback(function (searchResult) {
                                 var poi = searchResult.getPoi(0);
                                // $("#AlertMap").attr("value", poi.point.lng + "," + poi.point.lat);                                
                                 var point = new BMap.Point(poi.point.lng, poi.point.lat); //地图中心点      

                                 map.centerAndZoom(point, 13); // 初始化地图,设置中心点坐标和地图级别。
                                 var marker = new BMap.Marker(new BMap.Point(poi.point.lng, poi.point.lat), { icon: mIcon });  // 创建标注，为要查询的地方对应的经纬度

                                 var infoWindow = new window.BMap.InfoWindow("<div style=\"width:200px;height:100px\"></br>地址：" + keyword + "</br> 电话：" + "12322323" + "</br>备注：由于XXX情况谁谁走失情况等等信息。。。。。</div>"); // 创建信息窗口对象          
                                 map.addOverlay(marker);
                                 marker.addEventListener("mouseover", function () { this.openInfoWindow(infoWindow); });
                                 map.enableScrollWheelZoom(true);    //启用滚轮放大缩小，默认禁用
                                 map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
                                 map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件
                                 map.addControl(new BMap.OverviewMapControl()); //添加默认缩略地图控件 
                                 map.addControl(new BMap.OverviewMapControl({ isOpen: true, anchor: BMAP_ANCHOR_BOTTOM_RIGHT }));   //右下角，打开
                             });
                             localSearch.search(keyword);     

                         }
                         //异步调用百度js
                         function map_load() {
                             var load = document.createElement("script");
                             load.src = "http://api.map.baidu.com/api?v=1.4&callback=map_init";
                             document.body.appendChild(load);
                         }
                        // window.onload = ;
                </script>

	 <script>
		    !function () {
		        laydate.skin('molv');
		        laydate({ elem: '#Calendar' });
		    }();
      </script> 
		

	</head>
	<body class="front">
    	<div id="moquu_wxin" class="moquu_wxin"><a href="javascript:alert('iOS');">iOS<div class="moquu_wxinh"></div></a></div>
		<div id="moquu_wshare" class="moquu_wshare"><a href="javascript:alert('android');">android<div class="moquu_wshareh"></div></a></div>
		<div id="moquu_wmaps" class="moquu_wmaps"><a href="javascript:alert('电话');">电话<div class='moquu_wmapsh'></div></a></div>
		<a id="moquu_top" href="#header-top-second"></a>
		<div class="scrollToTop"><i class="icon-up-open-big"></i>
		</div>				
			<!-- 此处导入头部文件 start -->
			<#include "head.ftl"> 
			<!-- 此处导入头部文件 end -->

			<!-- banner start -->
			<!-- ================ -->
			<div class="banner" id="header-top-second">

				<!-- slideshow start -->
				<!-- ================ -->
				<div class="slideshow white-bg">
					
					<!-- slider revolution start -->
					<!-- ================ -->
					<div class="slider-banner-container">
						<div class="slider-banner-fullscreen">
							<ul>
								<!-- slide 1 start --> <!-- 遮罩层 class="light-translucent-bg" -->
								<li data-transition="fade" data-slotamount="7" data-masterspeed="1000" data-saveperformance="on" data-title="Slide 1" > 
								
								<!-- main image -->
								<img src="static/web/images/slider-3-slide-1.jpg"  alt="slidebg1" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">

								<!-- LAYER NR. 1 -->
								<div class="tp-caption very_large_text black sfl tp-resizeme"
									data-x="center"
									data-y="70" 
									data-speed="600"
									data-start="0"
									data-end="10000"
									data-endspeed="600">irevest_拾缘科技
								</div>

								<!-- LAYER NR. 2 -->
								<div class="tp-caption sfr small_thin_dark text-center tp-resizeme"
									data-x="center"
									data-y="170" 
									data-speed="600"
									data-start="0"
									data-end="10000"
									data-endspeed="600">我们致力打造最好的平台，竭诚为您服务. 
								</div>

								<!-- LAYER NR. 3 -->
								<div class="tp-caption tp-resizeme sfl"
									data-x="center"
									data-y="350" 
									data-speed="600"
									data-start="0"
									data-end="10000"
									data-endspeed="600"><a href="#" class="btn btn-dark btn-lg">了解更多 <i class="fa fa-angle-double-right pl-10"></i></a>
								</div>

								</li>
								<!-- slide 1 end -->

								<!-- slide 2 start -->
								<li data-transition="fade" data-slotamount="7" data-masterspeed="1000" data-saveperformance="on" data-title="Slide 2">
								
								<!-- main image -->
								<img src="static/web/images/slider-3-slide-2.jpg"  alt="slidebg1" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">

								<!-- LAYER NR. 1 -->
								<div class="tp-caption very_large_text black sfl tp-resizeme"
									data-x="center"
									data-y="70" 
									data-speed="600"
									data-start="0"
									data-end="10000"
									data-endspeed="600">irevest_拾缘科技
								</div>

								<!-- LAYER NR. 2 -->
								<div class="tp-caption sfr small_thin_dark text-center tp-resizeme"
									data-x="center"
									data-y="170" 
									data-speed="600"
									data-start="0"
									data-end="10000"
									data-endspeed="600">我们致力打造最好的平台，竭诚为您服务. 
								</div>

								<!-- LAYER NR. 3 -->
								<div class="tp-caption sfl tp-resizeme"
									data-x="center"
									data-y="300" 
									data-speed="600"
									data-start="0"
									data-end="10000"
									data-endspeed="600"><a href="portfolio-item.html" class="btn btn-dark btn-lg">了解更多 <i class="fa fa-angle-double-right pl-10"></i></a>
								</div>

								</li>
								<!-- slide 2 end -->

							</ul>
						</div>
					</div>
					<!-- slider revolution end -->

				</div>
				<!-- slideshow end -->

			</div>
			<!-- banner end -->
			<!-- page-top start-->
			<!-- ================ -->
			<section class="object-non-visible" data-animation-effect="fadeIn" data-effect-delay="100">
				<div class="section">
					<h1 class="text-center title" id="map">地图</h1>
					<div class="separator"></div>
					<p class="text-center">简单描述.</p>
				</div>
				<div id="mapDiv" style="height:700px;width:100%;overflow:hidden;">
				</div>
			</section>
			<!-- page-top end -->
			

			<!-- main-container start -->
			<!--<section class="main-container default-bg">
				<div class="main">
					<div class="container">
						<div class="call-to-action">
							<div class="row">
								<div class="col-md-8">
									<h1 class="title text-center">广告信息.</h1>
								</div>
								<div class="col-md-4">
									<div class="text-center">
										<a href="#" class="btn btn-white btn-lg">广告链接</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>-->
			<!-- main-container end -->

			<!-- section start -->
			<!-- ================ -->
			<!--<div class="section gray-bg clearfix object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="300">
				<div class="container">

					<h2 class="title">优质用户</h2>
					<div class="separator-2"></div>

					<div class="row grid-space-20">
						<div class="col-md-3 col-sm-6">
							<div class="box-style-1 white-bg team-member">
								<div class="overlay-container">
									<img src="static/web/images/team-member-1.jpg" alt="">
									<div class="overlay">
										<ul class="social-links clearfix">
											<li class="twitter"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-twitter"></i></a></li>
											<li class="skype"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-skype"></i></a></li>
											<li class="facebook"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-facebook"></i></a></li>
										</ul>
									</div>
								</div>
								<h3>周杰伦</h3>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="box-style-1 white-bg team-member">
								<div class="overlay-container">
									<img src="static/web/images/team-member-2.jpg" alt="">
									<div class="overlay">
										<ul class="social-links clearfix">
											<li class="twitter"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-twitter"></i></a></li>
											<li class="skype"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-skype"></i></a></li>
											<li class="facebook"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-facebook"></i></a></li>
										</ul>
									</div>
								</div>
								<h3>马小云</h3>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="box-style-1 white-bg team-member">
								<div class="overlay-container">
									<img src="static/web/images/team-member-3.jpg" alt="">
									<div class="overlay">
										<ul class="social-links clearfix">
											<li class="twitter"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-twitter"></i></a></li>
											<li class="skype"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-skype"></i></a></li>
											<li class="facebook"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-facebook"></i></a></li>
										</ul>
									</div>
								</div>
								<h3>程咬金</h3>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="box-style-1 white-bg team-member">
								<div class="overlay-container">
									<img src="static/web/images/team-member-4.jpg" alt="">
									<div class="overlay">
										<ul class="social-links clearfix">
											<li class="twitter"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-twitter"></i></a></li>
											<li class="skype"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-skype"></i></a></li>
											<li class="facebook"><a target="_blank" href="http://sc.chinaz.com"><i class="fa fa-facebook"></i></a></li>
										</ul>
									</div>
								</div>
								<h3>王思聪</h3>
							</div>
						</div>
					</div>
				</div>
			</div>-->
			<!-- section end -->
            
            <!-- section start -->
			<!-- ================ -->
			<!--<div class="parallax parallax-bg-3 dark-translucent-bg object-non-visible" data-animation-effect="fadeIn" data-effect-delay="300">

				<div class="container">
					<div class="stats row grid-space-10">
						<div class="col-md-3 col-sm-6">
							<div class="box-style-1">
								<h2 class="title">寻人统计</h2>
								<i class="fa fa-users"></i>
								<span class="stat-num" data-to="1525" data-speed="3000">0</span>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="box-style-1">
								<h2 class="title">拾物统计</h2>
								<i class="fa fa-briefcase"></i>
								<span class="stat-num" data-to="1125" data-speed="3000">0</span>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="box-style-1">
								<h2 class="title">失物统计</h2>
								<i class="fa fa-briefcase"></i>
								<span class="stat-num" data-to="1836" data-speed="3000">0</span>
							</div>
						</div>
					</div>
				</div>

			</div>-->
			
			<!-- section start -->
			<div class="section clearfix">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="text-center space-top" id="dynamic">动态</h1>
							<div class="separator"></div>
							<p>Sed ut Perspiciatis Unde Omnis Iste Sed ut sit  voluptatem accusan tium </p>
							<div class="owl-carousel carousel">
								<div class="image-box object-non-visible" data-animation-effect="fadeInLeft" data-effect-delay="300">
									<div class="overlay-container">
										<img src="static/web/images/portfolio-1.jpg" alt="">
										<a href="#" class="overlay small">
											<i class="fa fa-link"></i>
											<span>Web Design</span>
										</a>
									</div>
									<a href="#" class="btn btn-light-gray btn-lg btn-block">Project Title</a>
								</div>
								<div class="image-box object-non-visible" data-animation-effect="fadeInLeft" data-effect-delay="200">
									<div class="overlay-container">
										<img src="static/web/images/portfolio-2.jpg" alt="">
										<a href="#" class="overlay small">
											<i class="fa fa-link"></i>
											<span>Web Design</span>
										</a>
									</div>
									<a href="#" class="btn btn-light-gray btn-lg btn-block">Project Title</a>
								</div>
								<div class="image-box object-non-visible" data-animation-effect="fadeInLeft" data-effect-delay="100">
									<div class="overlay-container">
										<img src="static/web/images/portfolio-3.jpg" alt="">
										<a href="#" class="overlay small">
											<i class="fa fa-link"></i>
											<span>Web Design</span>
										</a>
									</div>
									<a href="#" class="btn btn-light-gray btn-lg btn-block">Project Title</a>
								</div>
								<div class="image-box object-non-visible" data-animation-effect="fadeInLeft" data-effect-delay="0">
									<div class="overlay-container">
										<img src="static/web/images/portfolio-4.jpg" alt="">
										<a href="#" class="overlay small">
											<i class="fa fa-link"></i>
											<span>Web Design</span>
										</a>
									</div>
									<a href="#" class="btn btn-light-gray btn-lg btn-block">Project Title</a>
								</div>
								<div class="image-box">
									<div class="overlay-container">
										<img src="static/web/images/portfolio-5.jpg" alt="">
										<a href="#" class="overlay small">
											<i class="fa fa-link"></i>
											<span>Web Design</span>
										</a>
									</div>
									<a href="#" class="btn btn-light-gray btn-lg btn-block">Project Title</a>
								</div>
								<div class="image-box">
									<div class="overlay-container">
										<img src="static/web/images/portfolio-6.jpg" alt="">
										<a href="#" class="overlay small">
											<i class="fa fa-link"></i>
											<span>Web Design</span>
										</a>
									</div>
									<a href="#" class="btn btn-light-gray btn-lg btn-block">Project Title</a>
								</div>
								<div class="image-box">
									<div class="overlay-container">
										<img src="static/web/images/portfolio-7.jpg" alt="">
										<a href="#" class="overlay small">
											<i class="fa fa-link"></i>
											<span>Web Design</span>
										</a>
									</div>
									<a href="#" class="btn btn-light-gray btn-lg btn-block">Project Title</a>
								</div>
								<div class="image-box">
									<div class="overlay-container">
										<img src="static/web/images/portfolio-8.jpg" alt="">
										<a href="#" class="overlay small">
											<i class="fa fa-link"></i>
											<span>Web Design</span>
										</a>
									</div>
									<a href="#" class="btn btn-light-gray btn-lg btn-block">Project Title</a>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<!-- section end -->
			
			<!-- section start -->
			<!-- ================ -->
			<div class="section clearfix object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="300">
				<div class="container">
					<div class="row">
						<div class="col-md-12">

							<h1 class="text-center">公司公告</h1>
							<div class="separator"></div>
							<p class="lead text-center">Lorem ipsum dolor sit amet. Maiores, odio ut deleniti doloremque ad at praesentium<br> laudantium molestias similique. Quisquam incidunt ut laboriosam.</p>
							
							<!-- Tabs start -->
							<!-- ================ -->
							<div class="vertical hc-tabs">

								<!-- Tabs Top -->
								<div class="hc-tabs-top">
									<img data-tab="#tab1" src="static/web/images/section-image-1.png" alt="iDea" data-tab-animation-effect="fadeInRightSmall">
									<img data-tab="#tab2" src="static/web/images/section-image-2.png" alt="iDea" data-tab-animation-effect="fadeInRightSmall">
									<img data-tab="#tab3" src="static/web/images/section-image-3.png" alt="iDea" data-tab-animation-effect="fadeInRightSmall">
									<img data-tab="#tab4" src="static/web/images/section-image-4.png" alt="iDea" data-tab-animation-effect="fadeInRightSmall">
									<img data-tab="#tab5" src="static/web/images/section-image-2.png" alt="iDea" data-tab-animation-effect="fadeInRightSmall">
									<div class="space"></div>
								</div>
								
								<!-- Tabs Arrow -->
								<div class="arrow hidden-sm hidden-xs"><i class="fa fa-caret-up"></i></div>
								
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">
									<li class="active"><a href="#tab1" role="tab" data-toggle="tab"><i class="fa fa-magic pr-10"></i> 公司公告  </a></li>
									<li><a href="#tab2" role="tab" data-toggle="tab"><i class="fa fa-life-saver pr-10"></i> 公司新闻 </a></li>
									<li><a href="#tab3" role="tab" data-toggle="tab"><i class="fa fa-expand pr-10"></i> iOS动态  </a></li>
									<li><a href="#tab4" role="tab" data-toggle="tab"><i class="fa fa-file-o pr-10"></i> android动态 </a></li>
									<li><a href="#tab5" role="tab" data-toggle="tab"><i class="fa fa-file-o pr-10"></i> android动态 </a></li>
								</ul>

								<!-- Tab panes -->
								<div class="tab-content">
									<div class="tab-pane fade in active" id="tab1">
										<h1 class="text-center title">Very Flexible</h1>
										<div class="space"></div>
										<div class="row">
											<div class="col-md-6">
												<ul class="list-icons">
													<li><i class="icon-check pr-10"></i> Lorem ipsum dolor sit amet maiores</li>
													<li><i class="icon-check pr-10"></i> Consectetur adipisicing elit</li>
													<li><i class="icon-check pr-10"></i> Aut earum numquam hic placeat</li>
													<li><i class="icon-check pr-10"></i> Fugiat rem consequatur neque</li>
													<li><i class="icon-check pr-10"></i> Vitae magnam commodi repellendus</li>
													<li><i class="icon-check pr-10"></i> Expedita placeat omnis pariatur</li>
													<li><i class="icon-check pr-10"></i> Fugiat rem consequatur neque</li>
												</ul>
											</div>
											<div class="col-md-6">
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere hic qui non placeat ad explicabo dignissimos amet iusto veniam!</p>
												<p>Quo expedita tempore modi minima at adipisci saepe excepturi alias consequuntur sunt asperiores enim ut assumenda hic vitae, odio deleniti illo, veniam quas!</p>
												<p>Dignissimos quaerat. Iusto consequuntur natus quisquam vitae omnis ipsam dolorum praesentium.</p>
											</div>
										</div>
									</div>
									<div class="tab-pane fade" id="tab2">
										<h1 class="text-center title">Top Notch 24/7 Support</h1>
										<div class="space"></div>
										<div class="row">
											<div class="col-md-6">
												<ul class="list-icons">
													<li><i class="icon-check pr-10"></i> Consectetur adipisicing elit</li>
													<li><i class="icon-check pr-10"></i> Aut earum numquam hic placeat</li>
													<li><i class="icon-check pr-10"></i> Fugiat rem consequatur neque</li>
													<li><i class="icon-check pr-10"></i> Vitae magnam commodi repellendus</li>
													<li><i class="icon-check pr-10"></i> Expedita placeat omnis pariatur</li>
													<li><i class="icon-check pr-10"></i> Fugiat rem consequatur neque</li>
													<li><i class="icon-check pr-10"></i> Lorem ipsum dolor sit amet maiores</li>
												</ul>
											</div>
											<div class="col-md-6">
												<p>Dolor sit amet, consectetur adipisicing elit. Facere hic qui non placeat ad explicabo dignissimos amet iusto veniam!</p>
												<p>Expedita tempore modi minima at adipisci saepe excepturi alias consequuntur sunt asperiores enim ut assumenda hic vitae, odio deleniti illo, veniam quas!</p>
												<p>Dignissimos quaerat. Iusto consequuntur natus quisquam vitae omnis ipsam dolorum praesentium.</p>
											</div>
										</div>
									</div>
									<div class="tab-pane fade" id="tab3">
										<h1 class="text-center title">100% Responsive</h1>
										<div class="space"></div>
										<div class="row">
											<div class="col-md-6">
												<ul class="list-icons">
													<li><i class="icon-check pr-10"></i> Aut earum numquam hic placeat</li>
													<li><i class="icon-check pr-10"></i> Fugiat rem consequatur neque</li>
													<li><i class="icon-check pr-10"></i> Vitae magnam commodi repellendus</li>
													<li><i class="icon-check pr-10"></i> Expedita placeat omnis pariatur</li>
													<li><i class="icon-check pr-10"></i> Fugiat rem consequatur neque</li>
													<li><i class="icon-check pr-10"></i> Lorem ipsum dolor sit amet maiores</li>
													<li><i class="icon-check pr-10"></i> Consectetur adipisicing elit</li>
												</ul>
											</div>
											<div class="col-md-6">
												<p>Ipsum dolor sit amet, consectetur adipisicing elit. Facere hic qui non placeat ad explicabo dignissimos amet iusto veniam!</p>
												<p>Tempore modi minima at adipisci saepe excepturi alias consequuntur sunt asperiores enim ut assumenda hic vitae, odio deleniti illo, veniam quas!</p>
												<p>Dignissimos quaerat. Iusto consequuntur natus quisquam vitae omnis ipsam dolorum praesentium.</p>
											</div>
										</div>
									</div>
									<div class="tab-pane fade" id="tab4">
										<h1 class="text-center title">Well Documented</h1>
										<div class="space"></div>
										<div class="row">
											<div class="col-md-6">
												<ul class="list-icons">
													<li><i class="icon-check pr-10"></i> Fugiat rem consequatur neque</li>
													<li><i class="icon-check pr-10"></i> Vitae magnam commodi repellendus</li>
													<li><i class="icon-check pr-10"></i> Expedita placeat omnis pariatur</li>
													<li><i class="icon-check pr-10"></i> Fugiat rem consequatur neque</li>
													<li><i class="icon-check pr-10"></i> Lorem ipsum dolor sit amet maiores</li>
													<li><i class="icon-check pr-10"></i> Consectetur adipisicing elit</li>
													<li><i class="icon-check pr-10"></i> Aut earum numquam hic placeat</li>
												</ul>
											</div>
											<div class="col-md-6">
												<p>Sit amet, consectetur adipisicing elit. Facere hic qui non placeat ad explicabo dignissimos amet iusto veniam!</p>
												<p>Modi minima at adipisci saepe excepturi alias consequuntur sunt asperiores enim ut assumenda hic vitae, odio deleniti illo, veniam quas!</p>
												<p>Dignissimos quaerat. Iusto consequuntur natus quisquam vitae omnis ipsam dolorum praesentium.</p>
											</div>
										</div>
									</div>
									
									<div class="tab-pane fade" id="tab5">
										<h1 class="text-center title">新增</h1>
										<div class="space"></div>
										<div class="row">
											<div class="col-md-6">
												<ul class="list-icons">
													<li><i class="icon-check pr-10"></i> Fugiat rem consequatur neque</li>
													<li><i class="icon-check pr-10"></i> Vitae magnam commodi repellendus</li>
													<li><i class="icon-check pr-10"></i> Expedita placeat omnis pariatur</li>
													<li><i class="icon-check pr-10"></i> Fugiat rem consequatur neque</li>
													<li><i class="icon-check pr-10"></i> Lorem ipsum dolor sit amet maiores</li>
													<li><i class="icon-check pr-10"></i> Consectetur adipisicing elit</li>
													<li><i class="icon-check pr-10"></i> Aut earum numquam hic placeat</li>
												</ul>
											</div>
											<div class="col-md-6">
												<p>Sit amet, consectetur adipisicing elit. Facere hic qui non placeat ad explicabo dignissimos amet iusto veniam!</p>
												<p>Modi minima at adipisci saepe excepturi alias consequuntur sunt asperiores enim ut assumenda hic vitae, odio deleniti illo, veniam quas!</p>
												<p>Dignissimos quaerat. Iusto consequuntur natus quisquam vitae omnis ipsam dolorum praesentium.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- tabs end -->
				
						</div>
					</div>
				</div>
			</div>
			<!-- section end -->
			
			<!--关于我们 start -->
			<!-- main-container start -->
			<!-- ================ -->
			<section class="main-container object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="300">

				<!-- section start -->
				<!-- ================ -->
				<div class="clearfix">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<h1 class="text-center space-top" id="about">关于我们</h1>
								<div class="separator"></div>
								<div class="row">
									<div class="col-md-6">
									${getContact.qyGy}
									</div>

									<!-- sidebar start -->
									<aside class="sidebar col-md-6">
										<div class="side vertical-divider-left">
											<div class="block clearfix">
												<h3 class="title margin-top-clear">介绍视频</h3>
												<div class="embed-responsive embed-responsive-16by9">
                                                	<img src="static/web/images/portfolio-1.jpg" alt="">
													<!--<iframe class="embed-responsive-item" src="//player.vimeo.com/video/29198414?byline=0&amp;portrait=0"></iframe>
													<p><a href="http://vimeo.com/29198414">Introducing Vimeo Music Store</a> 
                                                    from <a href="http://vimeo.com/staff">Vimeo Staff</a> 
                                                    on <a href="https://vimeo.com">Vimeo</a>.</p>   -->
												</div>
											</div>
										</div>
									</aside>
									<!-- sidebar end -->
								</div>
								<br>
							</div>
						</div>
					</div>
				</div>
				<!-- section end -->

			</section>
			<!-- main-container end -->
			<!--关于我们 end-->
			
			
			
			<!-- 联系我们 start -->
			<section class="gray-bg object-non-visible" data-animation-effect="fadeIn" data-effect-delay="300">
				<div class="section">
					<div class="container">
						<div class="row">
							<h1 class="text-center space-top" id="concet">联系我们</h1>
							<div class="separator"></div>
							<div class="col-sm-6">
								<div class="footer-content object-non-visible" data-animation-effect="fadeInLeftSmall" data-effect-delay="300">
									${getContact.qyLx}
									
								</div>
							</div>
							<div class="col-sm-6">
								<div class="footer-content object-non-visible" data-animation-effect="fadeInRightSmall" data-effect-delay="300">
									<div class="alert alert-success hidden" id="contactSuccess2">
										<strong>成功!</strong> 您的信息已经发送给我们.
									</div>
									<div class="alert alert-error hidden" id="contactError2">
										<strong>失败!</strong> 发送您的消息有一个错误.
									</div>
									<form role="form" id="footer-form">
										<div class="form-group has-feedback">
											<label class="sr-only" for="name2">姓名</label>
											<input type="text" class="form-control" id="name2" placeholder="Name" name="name2">
											<i class="fa fa-user form-control-feedback"></i>
										</div>
										<div class="form-group has-feedback">
											<label class="sr-only" for="email2">邮件地址</label>
											<input type="email" class="form-control" id="email2" placeholder="Enter email" name="email2">
											<i class="fa fa-envelope form-control-feedback"></i>
										</div>
										<div class="form-group has-feedback">
											<label class="sr-only" for="message2">信息</label>
											<textarea class="form-control" rows="4" id="message2" placeholder="Message" name="message2"></textarea>
											<i class="fa fa-pencil form-control-feedback"></i>
										</div>
										<input type="submit" value="发送" class="btn btn-default">
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- footer end -->
			<!-- 联系我们 end -->
			
			<!-- 此处导入尾部文件 start -->
			<#include "foot.ftl"> 
			<!-- 此处导入尾部文件 end -->

		</div>
	</body>
</html>
