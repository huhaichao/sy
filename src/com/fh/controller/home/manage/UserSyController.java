package com.fh.controller.home.manage;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.entity.system.Role;
import com.fh.service.home.UserSyService;
import com.fh.service.system.appuser.AppuserService;
import com.fh.service.system.role.RoleService;
import com.fh.util.AppUtil;
import com.fh.util.Const;
import com.fh.util.ObjectExcelView;
import com.fh.util.PageData;

/** 
 * 类名称：UserSyController
 * 创建人：zbb 
 * 创建时间：2017-03-21
 */
@Controller
@RequestMapping(value="/usersy")
public class UserSyController extends BaseController {
	
	@Resource(name="usersyService")
	private UserSyService usersyService;
	@Resource(name="appuserService")
	private AppuserService appuserService;
	@Resource(name="roleService")
	private RoleService roleService;
	
	/**
	 * 访问后台菜单管理页面
	 * @return
	 */
	@RequestMapping(value="/user_list")
	public ModelAndView toLogin() throws Exception{
		ModelAndView mv = this.getModelAndView();
		try {
			//列出所有二级角色
			List<Role> roleList = roleService.listAllappERRoles();
			mv.setViewName("home/manage/user/user_list");
			mv.addObject("roleList", roleList);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}
	
	/**
	 * 访问后台菜单管理页面
	 * @return
	 */
	@RequestMapping(value="/user_edit")
	public String toDetial() throws Exception{
		return "home/manage/user/user_edit";
	}
	
	/**
	 * 回收站信息
	 * @return
	 */
	@RequestMapping(value="/goRecycle")
	public ModelAndView toRecycle(Page page) throws Exception{
		ModelAndView mv = this.getModelAndView();
		try {
			//列出所有二级角色
			List<Role> roleList = roleService.listAllappERRoles();
			mv.setViewName("home/manage/user/recycle_list");
			mv.addObject("roleList", roleList);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}
	
	/**
	 * 新增
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, "新增UserSy");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String T_SY_PHONE = pd.getString("T_SY_PHONE");
		String T_SY_CREATE_TIME = pd.getString("T_SY_CREATE_TIME");
		//pd.put("USERSY_ID", this.get32UUID());	//主键
		pd.put("T_SY_ACCOUNT",T_SY_PHONE + T_SY_CREATE_TIME.replaceAll("-", ""));
		usersyService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 物理删除
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out){
		logBefore(logger, "删除UserSy");
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			usersyService.delete(pd);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	}
	
	/**
	 * 逻辑删除
	 */
	@RequestMapping(value="/deleteUpd")
	public void deleteUpd(PrintWriter out){
		logBefore(logger, "删除UserSy");
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			usersyService.deleteUpd(pd);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	}
	
	/**
	 * 还原
	 */
	@RequestMapping(value="/restore")
	public void restore(PrintWriter out){
		logBefore(logger, "还原UserSy");
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			usersyService.restore(pd);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	}
	
	/**
	 * 修改
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, "修改UserSy");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		usersyService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 列表
	 */
	/*@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		logBefore(logger, "列表UserSy");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData>	varList = usersyService.list(page);	//列出UserSy列表
			mv.setViewName("home/manage/user/user_list");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}*/
	
	/**
	 * 去新增页面
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd(){
		logBefore(logger, "去新增UserSy页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			//列出所有二级角色
			List<Role> roleList = roleService.listAllappERRoles();
			mv.setViewName("home/manage/user/user_edit");
			mv.addObject("msg", "save");
			mv.addObject("pd", pd);
			mv.addObject("roleList", roleList);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	/**
	 * 去修改页面
	 */
	@RequestMapping(value="/goEdit")
	public ModelAndView goEdit(){
		logBefore(logger, "去修改UserSy页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			pd = usersyService.findById(pd);	//根据ID读取
			//列出所有二级角色
			List<Role> roleList = roleService.listAllappERRoles();			
			mv.setViewName("home/manage/user/user_edit");
			mv.addObject("msg", "edit");
			mv.addObject("pd", pd);
			mv.addObject("roleList", roleList);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	/**
	 * 批量逻辑删除
	 */
	@RequestMapping(value="/deleteAllUpd")
	@ResponseBody
	public Object deleteAllUpd() {
		logBefore(logger, "批量删除UserSy");
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				usersyService.deleteAllUpd(ArrayDATA_IDS);
				pd.put("msg", "ok");
			}else{
				pd.put("msg", "no");
			}
			pdList.add(pd);
			map.put("list", pdList);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return AppUtil.returnObject(pd, map);
	}
	
	/**
	 * 批量物理删除
	 */
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() {
		logBefore(logger, "批量删除UserSy");
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				usersyService.deleteAll(ArrayDATA_IDS);
				pd.put("msg", "ok");
			}else{
				pd.put("msg", "no");
			}
			pdList.add(pd);
			map.put("list", pdList);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return AppUtil.returnObject(pd, map);
	}
	
	/**
	 * 批量还原
	 */
	@RequestMapping(value="/restoreAll")
	@ResponseBody
	public Object restoreAll() {
		logBefore(logger, "批量还原UserSy");
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				usersyService.restoreAll(ArrayDATA_IDS);
				pd.put("msg", "ok");
			}else{
				pd.put("msg", "no");
			}
			pdList.add(pd);
			map.put("list", pdList);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return AppUtil.returnObject(pd, map);
	}
	
	/**
	 * 显示用户列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			
			String T_SY_USERNAME = pd.getString("T_SY_USERNAME");
			
			if(null != T_SY_USERNAME && !"".equals(T_SY_USERNAME)){
				T_SY_USERNAME = T_SY_USERNAME.trim();
				pd.put("T_SY_USERNAME", T_SY_USERNAME);
			}
			pd.put("delStatus", "0");
			page.setPd(pd);
			List<PageData>	varList = usersyService.list(page);	//列出UserSy列表
			List<Role> roleList = roleService.listAllappERRoles();//列出所有会员二级角色
			mv.setViewName("home/manage/user/user_list");
			mv.addObject("varList", varList);
			mv.addObject("roleList", roleList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
		return mv;
	}
	
	/**
	 * 回收站
	 */
	@RequestMapping(value="/selRecycle")
	public ModelAndView listRecycle(Page page){
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			
			String T_SY_USERNAME = pd.getString("T_SY_USERNAME");
			
			if(null != T_SY_USERNAME && !"".equals(T_SY_USERNAME)){
				T_SY_USERNAME = T_SY_USERNAME.trim();
				pd.put("T_SY_USERNAME", T_SY_USERNAME);
			}
			pd.put("delStatus", "1");
			page.setPd(pd);
			List<PageData>	varList = usersyService.list(page);	//列出UserSy列表
			List<Role> roleList = roleService.listAllappERRoles();//列出所有会员二级角色
			mv.setViewName("home/manage/user/recycle_list");
			mv.addObject("varList", varList);
			mv.addObject("roleList", roleList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
		return mv;
	}

	
	/*
	 * 导出到excel
	 * @return
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel(){
		logBefore(logger, "导出UserSy到excel");
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			Map<String,Object> dataMap = new HashMap<String,Object>();
			List<String> titles = new ArrayList<String>();
			titles.add("主键");	//1
			titles.add("帐号");	//2
			titles.add("密码");	//3
			titles.add("支付密码");	//4
			titles.add("名称");	//5
			titles.add("昵称");	//6
			titles.add("性别");	//7
			titles.add("出生日期");	//8
			titles.add("身份证号");	//9
			titles.add("电子邮箱");	//10
			titles.add("手机号");	//11
			titles.add("备注");	//12
			titles.add("积分");	//13
			titles.add("头像地址");	//14
			titles.add("状态");	//15
			titles.add("账户状态");	//16
			titles.add("角色ID");	//17
			titles.add("创建时间");	//18
			titles.add("上次登录时间");	//19
			titles.add("是否在线");	//20
			titles.add("受否受限制");	//21
			titles.add("备注1");	//22
			titles.add("备注2");	//23
			titles.add("删除标识");	//24
			titles.add("删除时间");	//25
			dataMap.put("titles", titles);
			List<PageData> varOList = usersyService.listAll(pd);
			List<PageData> varList = new ArrayList<PageData>();
			for(int i=0;i<varOList.size();i++){
				PageData vpd = new PageData();
				vpd.put("var1", varOList.get(i).get("T_SY_USER_ID").toString());	//1
				vpd.put("var2", varOList.get(i).getString("T_SY_ACCOUNT"));	//2
				vpd.put("var3", varOList.get(i).getString("T_SY_PASSWORD"));	//3
				vpd.put("var4", varOList.get(i).get("T_SY_PAY_PASSWORD").toString());	//4
				vpd.put("var5", varOList.get(i).getString("T_SY_USERNAME"));	//5
				vpd.put("var6", varOList.get(i).getString("T_SY_NICKNAME"));	//6
				vpd.put("var7", varOList.get(i).get("T_SY_SEX").toString());	//7
				vpd.put("var8", varOList.get(i).getString("T_SY_DATEOFBIRTH"));	//8
				vpd.put("var9", varOList.get(i).getString("T_SY_CARDID"));	//9
				vpd.put("var10", varOList.get(i).getString("T_SY_MAIL"));	//10
				vpd.put("var11", varOList.get(i).getString("T_SY_PHONE"));	//11
				vpd.put("var12", varOList.get(i).getString("T_SY_REMARK"));	//12
				vpd.put("var13", varOList.get(i).get("T_SY_INTEGRAL").toString());	//13
				vpd.put("var14", varOList.get(i).getString("T_SY_IMGPATH"));	//14
				vpd.put("var15", varOList.get(i).get("T_SY_USER_STATUS").toString());	//15
				vpd.put("var16", varOList.get(i).get("T_SY_ACCOUNT_STATE").toString());	//16
				vpd.put("var17", varOList.get(i).getString("T_SY_ROLEID"));	//17
				vpd.put("var18", varOList.get(i).getString("T_SY_CREATE_TIME"));	//18
				vpd.put("var19", varOList.get(i).getString("T_SY_LASTLOGINTIME"));	//19
				vpd.put("var20", varOList.get(i).get("T_SY_ISONLINE").toString());	//20
				vpd.put("var21", varOList.get(i).get("T_SY_ISLIMIR").toString());	//21
				vpd.put("var22", varOList.get(i).getString("T_SY_BZ1"));	//22
				vpd.put("var23", varOList.get(i).getString("T_SY_BZ2"));	//23
				vpd.put("var24", varOList.get(i).getString("T_SY_DEL_STATUS"));	//24
				vpd.put("var25", varOList.get(i).getString("T_SY_DEL_DATE"));	//25
				varList.add(vpd);
			}
			dataMap.put("varList", varList);
			ObjectExcelView erv = new ObjectExcelView();
			mv = new ModelAndView(erv,dataMap);
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/* ===============================权限================================== */
	public Map<String, String> getHC(){
		Subject currentUser = SecurityUtils.getSubject();  //shiro管理的session
		Session session = currentUser.getSession();
		return (Map<String, String>)session.getAttribute(Const.SESSION_QX);
	}
	/* ===============================权限================================== */
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
