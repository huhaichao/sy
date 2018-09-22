<html lang="en">
	<body class="front">
		<a id="moquu_top" href="#"></a>
		<!-- scrollToTop -->
		<div class="scrollToTop"><i class="icon-up-open-big"></i></div>
			<!-- header start --> 
			<header class="header fixed header-small clearfix">
				<div class="container">
					<div class="row">
						<div class="col-md-3">
							<!-- header-left start -->
							<!-- ================ -->
							<div class="header-left clearfix">
								<!-- logo -->
								<div class="logo">
									<a href="index.html"><img id="logo" src="static/web/images/logo_red.png" alt="iDea"></a>
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
							<div class="header-right clearfix">
								<!-- main-navigation start -->
								<!-- ================ -->
								<div class="main-navigation animated">
									<!-- 未登录时，显示以下导航菜单 -->
									<nav class="navbar navbar-default" role="navigation">
										<div class="container-fluid">
											<div id="navbar-collapse-5" class="collapse navbar-collapse scrollspy smooth-scroll" >
											<div id="homeMenu" style="display: none">
												<ul class="nav navbar-nav navbar-right">
												
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
															      <li><a id ="userMenu" href="${category.T_SY_MENU_URL}">${category.T_SY_MENU_NAME}</a></li>
															     <#else>
															     
															      <li><a href="${category.T_SY_MENU_URL}" class="dropdown-toggle" data-toggle="dropdown">${category.T_SY_MENU_NAME}</a></li>	      
														</#if>
														
												     </#list>
												</ul>
												</div>
											</div>
											
											<div id="navbar-collapse-4" class="collapse navbar-collapse scrollspy smooth-scroll" >
											<div id="homeMenu1" style="display: none">
												<ul class="nav navbar-nav navbar-right">
												
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
		</div>
				<!-- page-wrapper end -->
	</body>
</html>
