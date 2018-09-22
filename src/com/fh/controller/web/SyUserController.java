package com.fh.controller.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.entity.web.SyUser;
import com.fh.service.web.SyUserService;
import com.fh.util.AppUtil;
import com.fh.util.Const;
import com.fh.util.DateUtil;
import com.fh.util.PageData;
import com.fh.util.SyUtil;
import com.fh.util.Tools;

/**
 * 所有用户相关操作  密码，注册，用户资料等
 * @author yumeng
 *
 */
@Controller
public class SyUserController extends BaseController {

	@Resource(name="syuserService")
	private SyUserService userService;
	
	/**
	 * 获取登录用户的IP
	 * @throws Exception 
	 */
//	public void getRemortIP(String USERNAME) throws Exception {  
//		PageData pd = new PageData();
//		HttpServletRequest request = this.getRequest();
//		String ip = "";
//		if (request.getHeader("x-forwarded-for") == null) {  
//			ip = request.getRemoteAddr();  
//	    }else{
//	    	ip = request.getHeader("x-forwarded-for");  
//	    }
//		pd.put("USERNAME", USERNAME);
//		pd.put("IP", ip);
//		userService.saveIP(pd);
//	}  
	

	/**
	 * 访问登录页
	 * @return
	 */
	@RequestMapping(value="web/returnLogin")
	public ModelAndView toLogin() throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("SYSNAME", Tools.readTxtFile(Const.SYSNAME)); //读取系统名称
		mv.setViewName("web/login/login");		
		mv.addObject("pd",pd);
		return mv;
	}
	
	/**
	 * 进入登录页面
	 * @return
	 * @throws Exception
	 * yumeng
	 */
	@RequestMapping(value="web/toLogin")
	public   ModelAndView towebLogin() throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("SYSNAME", Tools.readTxtFile(Const.SYSNAME)); //读取系统名称
		mv.setViewName("web/login/login");		
		mv.addObject("pd",pd);
		return mv;
	}

	/**
	 * 进入修改密码页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="web/toModifypwd")
	public   ModelAndView toModifypwd() throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		mv.setViewName("web/modifypwd/modifypwd");
		mv.addObject("pd",pd);
		return mv ;
	}
	
	/**
	 * 进入个人信息页面
	 * @return
	 * @throws Exception
	 * yumeng
	 */
	@RequestMapping(value="web/toPerinfo")
	public  ModelAndView toPerinfo() throws Exception{
		ModelAndView mv = this.getModelAndView();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();		
		if(session.getAttribute(Const.SESSION_SY_USER)!=null){
			SyUser syuser=(SyUser)session.getAttribute(Const.SESSION_SY_USER);	
			PageData pd = new PageData();
			pd.put("sycard", syuser.gettSyCardid());
			pd.put("syphone", syuser.gettSyPhone());
			mv.setViewName("web/userinfo/perinfo");
		}else{
			mv.setViewName("web/login/login");	
		}		
		return mv ;
	}
	
	/**
	 * 进入注册页面
	 * @return
	 * @throws Exception
	 * yumeng
	 */
	@RequestMapping(value="web/toRegister")
	public   ModelAndView toRegister() throws Exception{
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("web/register/register");
		PageData pd = new PageData();
		mv.addObject("pd",pd);
		return mv ;
	}
	
	/**
	 * yumeng 
	 * 请求登录
	 */
	@RequestMapping(value="/web/login" ,produces="application/json;charset=UTF-8")
	@ResponseBody
	public Object loginweb() throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		String errInfo = "";
		PageData pd = new PageData();
		try {
			pd = this.getPageData();
			String USERNAME = pd.getString("tSyPhone");
			String PASSWORD = pd.getString("tSyPassword");
			if (null != USERNAME && null != PASSWORD) {
				// shiro管理的session
				Subject currentUser = SecurityUtils.getSubject();
				Session session = currentUser.getSession();
				pd.put("tSyPhone", USERNAME);
				String passwd =SyUtil.MD5(PASSWORD); // 密码加密
				pd.put("tSyPassword", passwd);
				pd = userService.getUserByNameAndPwd(pd);
				if (pd != null) {
					pd.put("tSyLastlogintime", DateUtil.getTime().toString());
					userService.updateLastLogin(pd);
					SyUser user = new SyUser();
					user.settSyPhone(USERNAME);
					user.settSyUserId(((Integer)pd.get("T_SY_USER_ID")).toString());
					user.settSyUsername(pd.getString("T_SY_USERNAME") == null ? " " : pd.getString("T_SY_USERNAME"));
					user.settSyPassword(pd.getString("T_SY_PASSWORD") == null ? " " : pd.getString("T_SY_PASSWORD"));
					user.settSyNickname(pd.getString("T_SY_NICKNAME") == null ? " " : pd.getString("T_SY_NICKNAME"));
					user.settSyAccount(pd.getString("T_SY_ACCOUNT") == null ? " " : pd.getString("T_SY_ACCOUNT"));
					user.settSyCardid(pd.getString("T_SY_CARDID") == null ? " " : pd.getString("T_SY_CARDID"));
					user.settSyImgpath(pd.getString("LAST_LOGIN") == null ? " " : pd.getString("LAST_LOGIN"));
					user.settSySex(((Integer)pd.get("T_SY_SEX")).toString());
					user.settSyMail(pd.getString("T_SY_MAIL") == null ? " " : pd.getString("T_SY_MAIL"));
					user.settSyLastlogintime(DateUtil.fomatDate(DateUtil.getTime()));
					user.settSyBz1(pd.getString("T_SY_BZ1"));
					SimpleDateFormat sdf=new SimpleDateFormat();
					user.settSyDateofbirth((Date)pd.get("T_SY_DATEOFBIRTH") == null ?DateUtil.fomatDate(DateUtil.getTime()): (Date)pd.get("T_SY_DATEOFBIRTH"));
					session.setAttribute(Const.SESSION_SY_USER, user);
					
//					String sessionCode = (String) session.getAttribute(Const.SESSION_SY_CODE); // 获取session中的验证码
//					session.setAttribute(Const.SESSION_SY_CODE, sessionCode);
					// shiro加入身份验证
					 Subject subject = SecurityUtils.getSubject();
					 UsernamePasswordToken token = new UsernamePasswordToken(USERNAME, PASSWORD);
					 try {
					 subject.login(token);
					 } catch (AuthenticationException e) {
					 errInfo = "fault";//身份验证失败
					 }
				} else {
					errInfo = "fault"; // 用户名或密码有误
				}

				if (Tools.isEmpty(errInfo)) {
					errInfo = "success"; // 验证成功
				}

			} else {
				errInfo = "fault"; // 缺少参数
			}
		} catch (Exception e) {
			errInfo = "fault"; // 用户名或密码有误
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		map.put("result", errInfo);
		return AppUtil.returnObject(new PageData(), map);
	}
	
	/**
	 * 用户注销
	 * @param session
	 * @return
	 */
	@RequestMapping(value="web/toLogout")
	@ResponseBody
	public Object sylogout(){	
		PageData pd = new PageData();
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Subject currentUser = SecurityUtils.getSubject();			
			Session session = currentUser.getSession();	
			if(session.getAttribute(Const.SESSION_SY_USER)!=null){
				session.removeAttribute(Const.SESSION_SY_USER);	
				//shiro销毁登录
				Subject subject = SecurityUtils.getSubject(); 
				subject.logout();		
				pd.put("SYSNAME", Tools.readTxtFile(Const.SYSNAME)); //读取系统名称
			    map.put("result", "success");
			}else{
				map.put("result", "none");
			}
		} catch (Exception e) {
			map.put("result", "error");
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return  AppUtil.returnObject(pd, map);
	}
	
	/**
	 * 用户登录后加载初始化数据
	 * @return
	 */
	@RequestMapping(value="web/syinit")
	@ResponseBody
	public Object syInit(){	
		PageData pd = new PageData();
		Map<String, Object> map = new HashMap<String, Object>();
		PageData syuser;
		try {
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();		
		SyUser sessionuser=(SyUser)session.getAttribute(Const.SESSION_SY_USER);
		pd.put("tSyPhone", sessionuser.gettSyPhone());
	    syuser=(PageData)userService.findByPhone(pd);	    
	    map.put("syname",syuser.getString("T_SY_USERNAME").trim().length()==0?syuser.getString("T_SY_PHONE"):syuser.getString("T_SY_USERNAME"));
	    map.put("syphone", syuser.getString("T_SY_PHONE"));
	    map.put("sysex", ((Integer)syuser.get(("T_SY_SEX"))));
	    map.put("sycard", syuser.getString("T_SY_CARDID"));
	    map.put("sync",syuser.getString("T_SY_NICKNAME").trim().length()==0?syuser.getString("T_SY_PHONE"):syuser.getString("T_SY_NICKNAME") );
	    map.put("sybri", (Date)syuser.get("T_SY_DATEOFBIRTH") == null ?DateUtil.fomatDate(DateUtil.getTime()): (Date)syuser.get("T_SY_DATEOFBIRTH"));	  
	    map.put("syemail", syuser.getString("T_SY_MAIL"));
	    map.put("sybz", syuser.getString("T_SY_BZ1"));
	    map.put("syimg", syuser.getString("T_SY_IMGPATH"));			
		map.put("result", "success");
		} catch (Exception e) {
			map.put("result", "error");
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return  AppUtil.returnObject(pd, map);
	}
	
	/**
	 * 判断用户是否已经登陆
	 * @return
	 */
	@RequestMapping(value="web/hasLogin")
	@ResponseBody
	public Object hasLogin(){	
		PageData pd = new PageData();
		Map<String, Object> map = new HashMap<String, Object>();
		StringBuffer contentBuffer = new StringBuffer();
		PageData syuser;
		try {
		pd = this.getPageData();
		String bol = pd.getString("syhome");
		Subject currentUser = SecurityUtils.getSubject(); 
			if(currentUser!=null){
				Session session = currentUser.getSession();		
				SyUser sessionuser=(SyUser)session.getAttribute(Const.SESSION_SY_USER);
				if(sessionuser!=null){
					String prefix="web/";
					if(bol.equalsIgnoreCase("false")){
						prefix="";
					}
					pd.put("tSyPhone", sessionuser.gettSyPhone());
				    syuser=(PageData)userService.findByPhone(pd);	    
				    map.put("syname",syuser.getString("T_SY_USERNAME").trim().length()==0?syuser.getString("T_SY_PHONE"):syuser.getString("T_SY_USERNAME"));
				    map.put("syphone", syuser.getString("T_SY_PHONE"));
				    map.put("sysex", ((Integer)syuser.get(("T_SY_SEX"))));
				    map.put("sycard", syuser.getString("T_SY_CARDID"));
				    map.put("sync",syuser.getString("T_SY_NICKNAME").trim().length()==0?syuser.getString("T_SY_PHONE"):syuser.getString("T_SY_NICKNAME") );
				    map.put("sybri", (Date)syuser.get("T_SY_DATEOFBIRTH") == null ?DateUtil.fomatDate(DateUtil.getTime()): (Date)syuser.get("T_SY_DATEOFBIRTH"));	  
				    map.put("syemail", syuser.getString("T_SY_MAIL"));
				    map.put("sybz", syuser.getString("T_SY_BZ1"));
				    map.put("syimg", syuser.getString("T_SY_IMGPATH"));	
					map.put("result", "login");
					/*contentBuffer.append("<ul class='nav navbar-nav navbar-right'>");
					contentBuffer.append("<li>");
					contentBuffer.append("<a href='index.html'>首页</a>");
					contentBuffer.append("</li>");
					contentBuffer.append("<li class='dropdown'>");
					contentBuffer.append("<a href='#' class='dropdown-toggle' data-toggle='dropdown'>统计</a>");
					contentBuffer.append("<ul class='dropdown-menu'>");
					contentBuffer.append("<li><a href='#'>注册用户量</a></li>");
					contentBuffer.append("<li><a href='#'>在线用户量</a></li>");
					contentBuffer.append("</ul>");
					contentBuffer.append("</li>");
					contentBuffer.append("<li class='dropdown'>");
					contentBuffer.append("<a href='#' class='dropdown-toggle' data-toggle='dropdown'>浏览</a>");
					contentBuffer.append("<ul class='dropdown-menu'>");
					contentBuffer.append("<li><a href='people_list.html'>寻人列表</a></li>");
					contentBuffer.append("<li><a href='pickup_list.html'>拾物列表</a></li>");
					contentBuffer.append("<li><a href='loster_list.html'>失物列表</a></li>");
					contentBuffer.append("</ul>");
					contentBuffer.append("</li>");
					contentBuffer.append("<li class='dropdown'>");
					contentBuffer.append("<a href='#' class='dropdown-toggle' data-toggle='dropdown'>发布</a>");
					contentBuffer.append("<ul class='dropdown-menu'>");
					contentBuffer.append("<li><a href='"+prefix+"pub_info/pub_people_info.html'>发布寻人</a></li>");
					contentBuffer.append(" <li><a href='"+prefix+"pub_info/pub_pickup_info.html'>发布拾物</a></li>");
					contentBuffer.append(" <li><a href='"+prefix+"pub_info/pub_lost_info.html'>发布失物</a></li>");
					contentBuffer.append("</ul>");
					contentBuffer.append("</li>");
					contentBuffer.append("<li class='dropdown'>");
					contentBuffer.append("<a href='#' class='dropdown-toggle' data-toggle='dropdown'>"+syuser.getString("T_SY_USERNAME").trim()+"</a>");
					contentBuffer.append("<ul class='dropdown-menu'>");
					contentBuffer.append("<li><a href='"+prefix+"toPerinfo'>个人信息</a></li>");
					contentBuffer.append("<li><a href='"+prefix+"toModifypwd'>密码修改</a></li>");
					contentBuffer.append("<li><a href='"+prefix+"toAccountDetail'>信用积分</a></li>");
					contentBuffer.append("<li><a href='install_wallet.html'>我的钱包</a></li>");
					contentBuffer.append("<li><a href='"+prefix+"toCoupon'>我的优惠券</a></li>");
					contentBuffer.append("<li><a href='"+prefix+"toLaw'>法律条文</a></li>");
					contentBuffer.append("<li><a href='"+prefix+"toFault'>故障反馈</a></li>");
					contentBuffer.append("</ul>");
					contentBuffer.append("</li>");	
					contentBuffer.append("<li class='dropdown'>");
					contentBuffer.append("<a href='#' class='dropdown-toggle' data-toggle='dropdown'>消息</a>");         	
					contentBuffer.append("<ul class='dropdown-menu'>");				
					contentBuffer.append("<li><a href='info_pub_list.html'>我的发布消息</a></li>");				
					contentBuffer.append("<li><a href='info_help_list.html'>我的帮助消息</a></li>");			
					contentBuffer.append("<li><a href='info_sys_list.html'>我的系统消息</a></li>");             
					contentBuffer.append("<li><a href='info_sys_list.html'>我的系统消息</a></li>");                
					contentBuffer.append("<li><a href='info_collect_list.html'>我的收藏消息</a></li>");     				
					contentBuffer.append("</ul>");				
					contentBuffer.append("</li>");              
					contentBuffer.append("</ul>");		*/		
				}else{
					map.put("result", "logout");
				}
			}else{
				map.put("result", "logout");
			}
			map.put("innerhtml",contentBuffer.toString());
		
		} catch (Exception e) {
			map.put("result", "error");
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return  AppUtil.returnObject(pd, map);
	}
	
	/**
	 * yumeng
	 * 个人信息编辑
	 * @return
	 */	
	@RequestMapping(value = "web/editPerinfo")
	@ResponseBody
	public Object savePerinfo() {
		PageData pd = new PageData();
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			pd = this.getPageData();
			Subject currentUser = SecurityUtils.getSubject();  
			Session session = currentUser.getSession();		
			SyUser syuser=(SyUser)session.getAttribute(Const.SESSION_SY_USER);
		    String USER_IDS=syuser.gettSyUserId();
			//String USER_PHONE = pd.getString("T_SY_PHONE");
			pd.put("tSyUserId", USER_IDS);
			pd.put("tSyUsername",pd.getString("T_SY_USERNAME").trim().length()==0?pd.getString("T_SY_PHONE"):pd.getString("T_SY_USERNAME"));
			pd.put("tSyPhone", pd.getString("T_SY_PHONE"));
			pd.put("tSySex", pd.getString("T_SY_SEX"));
			pd.put("tSyCardid", pd.getString("T_SY_CARDID"));
			pd.put("tSyNickname",pd.getString("T_SY_NICKNAME").trim().length()==0?pd.getString("T_SY_PHONE"):pd.getString("T_SY_NICKNAME") );
			pd.put("tSyDateofbirth", pd.getString("T_SY_DATEOFBIRTH"));
			pd.put("tSyMail", pd.getString("T_SY_MAIL"));
			pd.put("tSyBz1", pd.getString("T_SY_BZ1"));
			pd.put("tSyImgpath", pd.getString("T_SY_IMGPATH"));
			userService.editU(pd);
			map.put("result", "success");
		} catch (Exception e) {
			map.put("result", "error");
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return AppUtil.returnObject(pd, map);
	}

    /**
     * 手机注册
     * @return
     */
	@RequestMapping(value = "web/regedit")
	@ResponseBody
	public Object userRegist() {
		PageData pd = new PageData();
		Map<String, Object> map = new HashMap<String, Object>();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
		try {
			pd = this.getPageData();
			//Subject currentUser = SecurityUtils.getSubject();  
			//Session session = currentUser.getSession();				
			String USER_IDS = pd.getString("tSyPhone");
			String PASSWORD = pd.getString("tSyPassword");
			String passwd =SyUtil.MD5(PASSWORD); // 密码加密
			pd.put("tSyPassword", passwd);
			pd.put("tSyAccount", USER_IDS+sdf.format(new Date()));
			if (null != USER_IDS && !"".equals(USER_IDS)) {
				if(userService.findByPhone(pd)==null){
				   userService.saveNewSyUser(pd);
				   map.put("result", "sucess");
				}else{
					map.put("result", "registed");
				}
			} 
		} catch (Exception e) {
			map.put("result", "error");
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return AppUtil.returnObject(new PageData(), map);
	}
	
	
	/**
	 * 修改密码
	 * @return
	 */
	@RequestMapping(value = "web/modifypwd")
	@ResponseBody
	public Object pwdModify() {
		PageData pd = new PageData();
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			pd = this.getPageData();
			//PageData syuser=(PageData)userService.findByPhone(pd);
			//String USER_IDS = pd.getString("tSyPhone");
			Subject currentUser = SecurityUtils.getSubject();  
			Session session = currentUser.getSession();
			SyUser syuser=(SyUser)session.getAttribute(Const.SESSION_SY_USER);
			if(syuser!=null){
			    String USER_IDS=syuser.gettSyPhone();
				String PASSWORDOLD = pd.getString("txtoldpass");
				String PASSWORDNEW = pd.getString("txtnewpass");
				String passwd_old = SyUtil.MD5(PASSWORDOLD);
				String passwd_new = SyUtil.MD5(PASSWORDNEW); // 密码加密
				if(passwd_old.equalsIgnoreCase(syuser.gettSyPassword())){
					pd.put("tSyPassword", passwd_new);
					pd.put("tSyPhone", USER_IDS);
					userService.updatePassword(pd);
					map.put("result", "sucess");
				}else{
					map.put("result", "pwdfault");
				}		
			}
		} catch (Exception e) {
			map.put("result", "error");
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return AppUtil.returnObject(new PageData(), map);
	}
	
	/**
	 * 忘记密码
	 * @return
	 */
	@RequestMapping(value = "web/forgetpassword")
	@ResponseBody
	public Object forgetpassword() {
		PageData pd = new PageData();
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			pd = this.getPageData();
			PageData syuser=(PageData)userService.findByPhone(pd);
			if(syuser!=null){
			    String USER_IDS=pd.getString("tSyPhone");
				String PASSWORD = pd.getString("tSyPassword");
				String passwd_new =SyUtil.MD5(PASSWORD); // 密码加密
				pd.put("tSyPassword", passwd_new);
				userService.updatePassword(pd);
				map.put("result", "sucess");
			}else{
				map.put("result", "pwdfault");
			}		
		} catch (Exception e) {
			map.put("result", "error");
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return AppUtil.returnObject(new PageData(), map);
	}
	
}
