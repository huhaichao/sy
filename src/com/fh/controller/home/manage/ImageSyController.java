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
import com.fh.service.home.DictionarySyService;
import com.fh.service.home.ImageSyService;
import com.fh.util.AppUtil;
import com.fh.util.Const;
import com.fh.util.ObjectExcelView;
import com.fh.util.PageData;

/** 
 * 类名称：ImageSyController
 * 创建人：zbb 
 * 创建时间：2017-03-18
 */
@Controller
@RequestMapping(value="/imagesy")
public class ImageSyController extends BaseController {
	
	@Resource(name="imagesyService")
	private ImageSyService imagesyService;
	
	@Resource(name="dictionarysyService")
	private DictionarySyService dictionarysyService;
	
	/**
	 * 访问后台管理页面
	 * @return
	 */
	@RequestMapping(value="/image_list")
	public String toLogin() throws Exception{
		return "home/manage/webSite/image_list";
	}
	
	/**
	 * 访问后台管理页面
	 * @return
	 */
	@RequestMapping(value="/image_edit")
	public String toDetial() throws Exception{
		return "home/manage/webSite/image_edit";
	}
	
	/**
	 * 新增
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, "新增ImageSy");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		//pd.put("T_SY_PICTURE_ID", this.get32UUID());	//主键
		imagesyService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out){
		logBefore(logger, "删除ImageSy");
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			imagesyService.delete(pd);
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
		logBefore(logger, "修改ImageSy");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		imagesyService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		logBefore(logger, "列表ImageSy");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData>	varList = imagesyService.list(page);	//列出ImageSy列表
			mv.setViewName("home/manage/webSite/image_list");
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
		logBefore(logger, "去新增ImageSy页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			List<PageData>	varGgList = dictionarysyService.findByGgType();
			mv.setViewName("home/manage/webSite/image_edit");
			mv.addObject("msg", "save");
			mv.addObject("pd", pd);
			mv.addObject("varGgList", varGgList);
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
		logBefore(logger, "去修改ImageSy页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			List<PageData>	varGgList = dictionarysyService.findByGgType();
			pd = imagesyService.findById(pd);	//根据ID读取
			mv.setViewName("home/manage/webSite/image_edit");
			mv.addObject("msg", "edit");
			mv.addObject("pd", pd);
			mv.addObject("varGgList", varGgList);
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
		logBefore(logger, "批量删除ImageSy");
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				imagesyService.deleteAll(ArrayDATA_IDS);
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
		logBefore(logger, "导出ImageSy到excel");
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			Map<String,Object> dataMap = new HashMap<String,Object>();
			List<String> titles = new ArrayList<String>();
			titles.add("图片ID");	//1
			titles.add("图片名称");	//2
			titles.add("图片标题");	//3
			titles.add("图片路径");	//4
			titles.add("链接地址");	//5
			titles.add("图片描述");	//6
			titles.add("上传日期");	//7
			titles.add("图片类型");	//8
			titles.add("备用1");	//9
			titles.add("备用2");	//10
			dataMap.put("titles", titles);
			List<PageData> varOList = imagesyService.listAll(pd);
			List<PageData> varList = new ArrayList<PageData>();
			for(int i=0;i<varOList.size();i++){
				PageData vpd = new PageData();
				vpd.put("var1", varOList.get(i).getString("T_SY_ PICTURE _ID"));	//1
				vpd.put("var2", varOList.get(i).getString("T_SY_NAME"));	//2
				vpd.put("var3", varOList.get(i).getString("T_SY_TITLE"));	//3
				vpd.put("var4", varOList.get(i).getString("T_SY_PATH"));	//4
				vpd.put("var5", varOList.get(i).getString("T_SY_LINK_PATH"));	//5
				vpd.put("var6", varOList.get(i).getString("T_SY_DESC"));	//6
				vpd.put("var7", varOList.get(i).get("T_SY_DATE").toString());	//7
				vpd.put("var8", varOList.get(i).get("T_SY_TYPE").toString());	//8
				vpd.put("var9", varOList.get(i).getString("T_SY_BZ1"));	//9
				vpd.put("var10", varOList.get(i).getString("T_SY_BZ2"));	//10
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
