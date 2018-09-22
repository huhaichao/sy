
<html lang="en">
	<body>
		<a id="moquu_top" href="#header-top-second"></a>
		<!-- scrollToTop -->
		<!-- ================ -->
		<div class="scrollToTop"><i class="icon-up-open-big"></i></div>

		<!-- page wrapper start -->
		<!-- ================ -->
		<div class="page-wrapper">
			<!-- section start -->
			<!-- ================ -->
			<div class="section gray-bg object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="300">
				<div class="owl-carousel content-slider">
				<#list listFoot as category>
					<div class="testimonial">
						<div class="container">
							<div class="row">
								<div class="col-md-8 col-md-offset-2">
									<h2 class="title">${category.T_SY_TITLE}</h2>
									<div class="testimonial-image">
										<img src="${category.T_SY_PATH}" alt="${category.T_SY_TITLE}" title="${category.T_SY_TITLE}" class="img-circle">
									</div>
									<div class="testimonial-body">
										<p>${category.T_SY_DESC}</p>
	
									</div>
								</div>
							</div>
						</div>
					</div>
				</#list>
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
									<div class="logo-footer"><img id="logo-footer" src="static/web/images/logo_red_footer.png" alt=""></div>
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
												<li><i class="fa fa-map-marker pr-10"></i> ${getContact.qyPath}</li>
												<li><i class="fa fa-phone pr-10"></i>${getContact.qyPhone}</li>
												<li><i class="fa fa-envelope-o pr-10"></i>${getContact.qyMail}</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="space-bottom hidden-lg hidden-xs"></div>
							<div class="col-sm-6 col-md-2">
								<div class="footer-content">
								<div id="linkMenu">
									<h2>链接</h2>
									<nav>
										<ul class="nav nav-pills nav-stacked">
										   <#list listMenu as category> 
										     <#if category.T_SY_MENU_NAME="关于我们">
											   <li class="active"><a href="${category.T_SY_MENU_URL}">${category.T_SY_MENU_NAME}</a></li>
											 <#elseif category.T_SY_MENU_NAME="用户管理">
											   <li><a id="userLink" href="${category.T_SY_MENU_URL}">${category.T_SY_MENU_NAME}</a></li> 
											 <#else>
									           <li><a href="${category.T_SY_MENU_URL}">${category.T_SY_MENU_NAME}</a></li> 
									         </#if>
                                            </#list>
										</ul>
									</nav>
								</div>
								</div>
							<div class="footer-content">
								<div id="linkMenu1">
									<h2>链接</h2>
									<nav>
										<ul class="nav nav-pills nav-stacked">
										   <#list listMenu as category> 
										     <#if category.T_SY_MENU_NAME="关于我们">
											   <li class="active"><a href="${category.T_SY_MENU_URL}">${category.T_SY_MENU_NAME}</a></li>
											 <#elseif category.T_SY_MENU_NAME="用户管理">
											 
											 <#else>
									           <li><a href="${category.T_SY_MENU_URL}">${category.T_SY_MENU_NAME}</a></li> 
									         </#if>
                                            </#list>
                                             <li><a href="web/toLogin">登录</a></li>  
											 <li><a href="web/toRegister">注册</a></li>
										</ul>
									</nav>
								</div>
								</div>

							</div>
							<div class="col-sm-6 col-md-3 col-md-offset-1">
								<div class="footer-content">
									<h2>友情链接</h2>
									<#list getLinkList as linkList>
										<div class="gallery-item col-xs-4">
											<div class="overlay-container">
												<img src="${linkList.T_SY_PATH}" alt="${linkList.T_SY_DESC}">
												<a href="${linkList.T_SY_LINK_PATH}" class="overlay small">
													<i class="fa fa-link"></i>
												</a>
											</div>
										</div>
									</#list>
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
									<div id="collapse2">
										<ul class="nav navbar-nav">
													<#list listMenu as category> 
														<#if category.T_SY_MENU_NAME="首页">
															   <li><a href="${category.T_SY_MENU_URL}">${category.T_SY_MENU_NAME}</a></li>
															     <#elseif category.T_SY_MENU_NAME="登录">
															     
															     <li><a href="${category.T_SY_MENU_URL}">${category.T_SY_MENU_NAME}</a></li>
															     
															     <#elseif category.T_SY_MENU_NAME="注册">
															     
															     <li><a href="${category.T_SY_MENU_URL}">${category.T_SY_MENU_NAME}</a></li>
															     
															     <#elseif category.T_SY_MENU_NAME="下载">
															     
															     <li><a href="${category.T_SY_MENU_URL}">${category.T_SY_MENU_NAME}</a></li>
															     
															     <#elseif category.T_SY_MENU_NAME="用户管理">
													              <li><a id="userHome2" href="${category.T_SY_MENU_URL}">${category.T_SY_MENU_NAME}</a></li>
															     <#else>
															    <li><a href="${category.T_SY_MENU_URL}" class="dropdown-toggle" data-toggle="dropdown">${category.T_SY_MENU_NAME}</a></li>	      
														</#if>
														
												     </#list>
										</ul>
										</div>
									</div>
									
								<div class="collapse navbar-collapse" id="navbar-collapse-3">
								<div id="collapse3">
										<ul class="nav navbar-nav">
													<#list listMenu as category> 

														<#if category.T_SY_MENU_NAME="首页">		
																<li><a href="${category.T_SY_MENU_URL}">${category.T_SY_MENU_NAME}</a></li>										     
															     <#elseif category.T_SY_MENU_NAME="用户管理">
															     
															     
															<#elseif category.T_SY_MENU_NAME="下载">
															     
															     <li><a href="${category.T_SY_MENU_URL}">${category.T_SY_MENU_NAME}</a></li>
															     
															     <#else>
															     
															     
															    <li><a href="${category.T_SY_MENU_URL}" class="dropdown-toggle" data-toggle="dropdown">${category.T_SY_MENU_NAME}</a></li>	      
														</#if>
														
												     </#list>
												     <li><a href="web/toLogin">登录</a></li>  
												     <li><a href="web/toRegister">注册</a></li>
										</ul>
										</div>
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
		<!-- page-wrapper end -->
	</body>
</html>
