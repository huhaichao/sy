package com.fh.controller.web;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.entity.web.SyUser;
import com.fh.service.web.SyAccountService;
import com.fh.util.AppUtil;
import com.fh.util.Const;
import com.fh.util.PageData;
import com.fh.util.Tools;
import com.fh.util.mail.MailSenderInfo;
import com.fh.util.mail.SimpleMailSender;

/**
 * 进入home页，积分，钱包，优惠券等
 * @author yumeng
 *
 */
@Controller
public class SyAccountController  extends BaseController {

	@Resource(name="syaccountService")
	private SyAccountService accountService;

	
	/**
	 * 积分明细信息界面显示
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="web/toAccountDetail")
	public ModelAndView toAccount() throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("SYSNAME", Tools.readTxtFile(Const.SYSNAME)); //读取系统名称
		mv.setViewName("web/account/credit");		
		mv.addObject("pd",pd);
		return mv;
	}
	
	
	/**
	 * 故障反馈页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="web/toFault")
	public ModelAndView toFault() throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("SYSNAME", Tools.readTxtFile(Const.SYSNAME)); //读取系统名称
		mv.setViewName("web/fault/fault");		
		mv.addObject("pd",pd);
		return mv;
	}
	
	
	/**
	 * 优惠券页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="web/toCoupon")
	public ModelAndView toCoupon() throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("SYSNAME", Tools.readTxtFile(Const.SYSNAME)); //读取系统名称
		mv.setViewName("web/coupon/coupon");		
		mv.addObject("pd",pd);
		return mv;
	}
	
	/**
	 * 法律条文
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="web/toLaw")
	public ModelAndView toLaw() throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("SYSNAME", Tools.readTxtFile(Const.SYSNAME)); //读取系统名称
		mv.setViewName("web/law/law");		
		mv.addObject("pd",pd);
		return mv;
	}
	
	/**
	 * 发送故障反馈邮件
	 * @return
	 */
	@RequestMapping(value="/web/sendmail")
	@ResponseBody
	public Object sySendMail(){	
		PageData pd = new PageData();
		pd=this.getPageData();
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Subject currentUser = SecurityUtils.getSubject();  
			Session session = currentUser.getSession();		
			SyUser sessionuser=(SyUser)session.getAttribute(Const.SESSION_SY_USER);			
			 SimpleMailSender sms=new SimpleMailSender();
		     MailSenderInfo mailInfo = new MailSenderInfo();    
		     mailInfo.setMailServerHost("smtp.163.com");    
		     mailInfo.setMailServerPort("25");    
		     mailInfo.setValidate(true);    
		     mailInfo.setUserName("itvbym@163.com");    
		     mailInfo.setPassword("091106");//您的邮箱密码    
		     mailInfo.setFromAddress("itvbym@163.com");    
		     mailInfo.setToAddress("yangxingxing@ysstech.com");       
		     mailInfo.setSubject(pd.getString("txttitle"));    
		     mailInfo.setContent(pd.getString("txtcontent"));    
		     //这个类主要来发送邮件   		 
		     sms.sendTextMail(mailInfo);//发送文体格式   
		     
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
	 * 查询积分明细记录
	 * @return
	 */
	@RequestMapping(value="web/getIntegral")
	@ResponseBody
	public Object syGetIntegral(){	
		PageData pd = new PageData();
		pd=this.getPageData();
		Map<String, Object> map = new HashMap<String, Object>();
		StringBuffer buf=new StringBuffer();
		DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Subject currentUser = SecurityUtils.getSubject();  
			Session session = currentUser.getSession();		
			SyUser sessionuser=(SyUser)session.getAttribute(Const.SESSION_SY_USER);
			String sType=pd.getString("T_SY_INTEGARAL_TYPE").equalsIgnoreCase("2")?null:pd.getString("T_SY_INTEGARAL_TYPE");			
			pd.put("tSyUserId", sessionuser.gettSyUserId());
			pd.put("tSyIntegaralType", sType);
			pd.put("T_SY_USER_ID",  sessionuser.gettSyUserId());
			pd.put("T_SY_INTEGARAL_TYPE", sType);
			List<PageData> list=accountService.getIntegralIList(pd);	 
			buf.append("<tr><td>日期</td><td>类型</td><td>积分</td><td>操作</td></tr>");
			for(PageData l:list){
		      String reasion= l.getString("T_SY_BZ1");
		      Integer inumber=((Integer)l.get(("T_SY_INTEGARAL_NUMBER")));
		      Date date= (Date)l.get("T_SY_CREATEDATE");	  			
			  buf.append("<tr ><td>"+fmt.format(date)+"</td> <td>"+reasion+"</td><td>"+inumber.toString()+"</td><td onclick='delIntegraInfo("+l.getString("T_SY_INTEGRAL_ID")+","+l.getString("T_SY_INTEGARAL_TYPE")+")'><a href='#'>删除</a></td></tr>");
			}
			map.put("list", buf);
			map.put("record", sessionuser.gettSyIntegral()==null?0:sessionuser.gettSyIntegral());
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
	 * 删除积分记录
	 * @return
	 */
	@RequestMapping(value="web/delIntegral")
	@ResponseBody
	public Object syDelIntegral(){	
		PageData pd = new PageData();
		pd=this.getPageData();
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Subject currentUser = SecurityUtils.getSubject();  
			Session session = currentUser.getSession();		
			SyUser sessionuser=(SyUser)session.getAttribute(Const.SESSION_SY_USER);
			String sType=pd.getString("T_SY_INTEGARAL_TYPE").equalsIgnoreCase("2")?null:pd.getString("T_SY_INTEGARAL_TYPE");
			pd.put("tSyUserId", sessionuser.gettSyUserId());
			pd.put("tSyIntegaralType",sType);
			pd.put("T_SY_USER_ID",  sessionuser.gettSyUserId());
			pd.put("T_SY_INTEGARAL_TYPE", sType);
			pd.put("T_SY_INTEGRAL_ID", pd.getString("T_SY_INTEGRAL_ID"));
			pd.put("tSyIntegralId", pd.getString("T_SY_INTEGRAL_ID"));			
			accountService.deleteIntegral(pd);
			map.put("type", sType);
			map.put("result", "success");
		} catch (Exception e) {
			map.put("result", "error");
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return  AppUtil.returnObject(pd, map);
	}
	
	
}
