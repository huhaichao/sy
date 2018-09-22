/* Theme Name:iDea - Clean & Powerful Bootstrap Theme
 * Author:HtmlCoder
 * Author URI:http://www.htmlcoder.me
 * Author e-mail:htmlcoder.me@gmail.com
 * Version:1.0.0
 * Created:October 2014
 * License URI:http://wrapbootstrap.com
 * File Description: Place here your custom scripts
 */

/**
 * YUMENG
 * 前台公用js
 * @returns
 */

//页面初始化，加载用户信息和菜单
	   function init(){
		
			   	$.ajax({
					type : "POST",
					url : '/sy/web/hasLogin',
					data : {syhome:'false'},
					dataType : 'json',
					cache : false,
					success : function(data) {
						if ("login" == data.result) {
							$('#navbar-collapse-1').empty();
			               $('#navbar-collapse-1').append(data.innerhtml);	
			               $("#username").html(data.syname);
						} 
					}
				});	
			   // $('#header').load('../statichtml/header.html');  
		       // $('#footer').load('../statichtml/footer.html'); 
			
		}
	      
	   //注销
	   function logout(){
		   
			$.ajax({
				type : "POST",
				url : '/sy/web/toLogout',
				dataType : 'json',
				cache : false,
				data : {},
				success : function(data) {
					if ("success" == data.result) {	
						//window.location.reload();
						window.location.href = "/sy";
					}else if ("none" == data.result) {	
						$("#btnlogout").tips({
							side:3,
				            msg:'当前无登陆用户.......',
				            bg:'#F80000',
				            time:10
			            });	
					} else {							
						$("#btnlogout").tips({
							side:2,
				            msg:'用户注销异常，请重新再试.......',
				            bg:'#F80000',
				            time:5
			            });								
					}
				}
	         });	       
	   }
	   
       //格式化日期
		Date.prototype.Format = function (fmt) { 
			    var o = {
			        "M+": this.getMonth() + 1, //月份 
			        "d+": this.getDate(), //日 
			        "h+": this.getHours(), //小时 
			        "m+": this.getMinutes(), //分 
			        "s+": this.getSeconds(), //秒 
			        "q+": Math.floor((this.getMonth()+3)/3),  //季度
			        "S": this.getMilliseconds() //毫秒 
			    };
			    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
			    for (var k in o)
			    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
			    return fmt;
		}