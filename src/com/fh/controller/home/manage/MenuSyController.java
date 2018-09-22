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
import com.fh.service.home.MenuSyService;
import com.fh.util.AppUtil;
import com.fh.util.Const;
import com.fh.util.ObjectExcelView;
import com.fh.util.PageData;

/** 
 * 类名称：MenuSyController
 * 创建人：zbb 
 * 创建时间：2017-03-16
 */
@Controller
@RequestMapping(value="/menusy")
public class MenuSyController extends BaseController {
	
	@Resource(name="menusyService")
	private MenuSyService menusyService;
	
	/**
	 * 访问后台菜单管理页面
	 * @return
	 */
	@RequestMapping(value="/menu_list")
	public String toLogin() throws Exception{
		return "home/manage/webSite/menu_list";
	}
	
	/**
	 * 访问后台菜单管理页面
	 * @return
	 */
	@RequestMapping(value="/menu_edit")
	public String toDetial() throws Exception{
		return "home/manage/webSite/menu_edit";
	}
	
	/**
	 * 新增
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, "新增MenuSy");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		//pd.put("T_SY_MENU_ID", this.get32UUID());	//主键
		menusyService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out){
		logBefore(logger, "删除MenuSy");
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			menusyService.delete(pd);
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
		logBefore(logger, "修改MenuSy");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		menusyService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		logBefore(logger, "列表MenuSy");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData>	varList = menusyService.list(page);	//列出MenuSy列表
			mv.setViewName("home/manage/webSite/menu_list");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 去新增页面
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd(){
		logBefore(logger, "去新增MenuSy页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			List<PageData>	varList = menusyService.listAll();
			mv.setViewName("home/manage/webSite/menu_edit");
			mv.addObject("msg", "save");
			mv.addObject("pd", pd);
			mv.addObject("varList", varList);
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
		logBefore(logger, "去修改MenuSy页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			List<PageData>	varList = menusyService.listAll();
			pd = menusyService.findById(pd);	//根据ID读取
			mv.setViewName("home/manage/webSite/menu_edit");
			mv.addObject("msg", "edit");
			mv.addObject("pd", pd);
			mv.addObject("varList", varList);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	/**
	 * 批量删除
	 */
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() {
		logBefore(logger, "批量删除MenuSy");
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				menusyService.deleteAll(ArrayDATA_IDS);
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
	
	/*
	 * 导出到excel
	 * @return
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel(){
		logBefore(logger, "导出MenuSy到excel");
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			Map<String,Object> dataMap = new HashMap<String,Object>();
			List<String> titles = new ArrayList<String>();
			titles.add("主键");	//1
			titles.add("菜单ID");	//2
			titles.add("菜单名称");	//3
			titles.add("父级菜单ID");	//4
			titles.add("菜单地址");	//5
			titles.add("是否禁用");	//6
			titles.add("排序");	//7
			titles.add("菜单描述");	//8
			titles.add("创建时间");	//9
			//titles.add("备用1");	//10
			//titles.add("备用2");	//11
			dataMap.put("titles", titles);
			List<PageData> varOList = menusyService.listAll(pd);
			List<PageData> varList = new ArrayList<PageData>();
			for(int i=0;i<varOList.size();i++){
				PageData vpd = new PageData();
				vpd.put("var1", varOList.get(i).getString("T_SY_MENU_ID"));	//1
				vpd.put("var2", varOList.get(i).get("T_SY_MENU_SUBMENU_ID").toString());	//2
				vpd.put("var3", varOList.get(i).getString("T_SY_MENU_NAME"));	//3
				vpd.put("var4", varOList.get(i).get("T_SY_MENU_PARENT_ID").toString());	//4
				vpd.put("var5", varOList.get(i).getString("T_SY_MENU_URL"));	//5
				vpd.put("var6", varOList.get(i).get("T_SY_MENU_DISABLED").toString());	//6
				vpd.put("var7", varOList.get(i).get("T_SY_MENU_ORDER").toString());	//7
				vpd.put("var8", varOList.get(i).getString("T_SY_MENU_DESCRIPTION"));	//8
				vpd.put("var9", varOList.get(i).get("T_SY_CREATEDATE").toString());	//9
				/*vpd.put("var10", varOList.get(i).getString("T_SY_BZ1"));	//10
				vpd.put("var11", varOList.get(i).getString("T_SY_BZ2"));	//11
*/				varList.add(vpd);
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