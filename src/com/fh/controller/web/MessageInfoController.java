package com.fh.controller.web;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

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
import com.fh.entity.system.Menu;
import com.fh.service.web.MessageInfoService;
import com.fh.entity.Page;
import com.fh.util.AppUtil;
import com.fh.util.ObjectExcelView;
import com.fh.util.Const;
import com.fh.util.PageData;
import com.fh.util.Tools;

/** 
 * 类名称：MessageInfoController
 * 创建人：FH 
 * 创建时间：2017-03-26
 *//*
@Controller
@RequestMapping(value="/messageinfo")
public class MessageInfoController extends BaseController {
	
	@Resource(name="messageinfoService")
	private MessageInfoService messageinfoService;
	
	*//**
	 * 新增
	 *//*
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, "新增MessageInfo");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("MESSAGEINFO_ID", this.get32UUID());	//主键
		messageinfoService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	*//**
	 * 删除
	 *//*
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out){
		logBefore(logger, "删除MessageInfo");
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			messageinfoService.delete(pd);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	}
	
	*//**
	 * 修改
	 *//*
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, "修改MessageInfo");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		messageinfoService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	*//**
	 * 列表
	 *//*
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		logBefore(logger, "列表MessageInfo");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData>	varList = messageinfoService.list(page);	//列出MessageInfo列表
			mv.setViewName("web/messageinfo/messageinfo_list");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	*//**
	 * 去新增页面
	 *//*
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd(){
		logBefore(logger, "去新增MessageInfo页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			mv.setViewName("web/messageinfo/messageinfo_edit");
			mv.addObject("msg", "save");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	*//**
	 * 去修改页面
	 *//*
	@RequestMapping(value="/goEdit")
	public ModelAndView goEdit(){
		logBefore(logger, "去修改MessageInfo页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			pd = messageinfoService.findById(pd);	//根据ID读取
			mv.setViewName("web/messageinfo/messageinfo_edit");
			mv.addObject("msg", "edit");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	*//**
	 * 批量删除
	 *//*
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() {
		logBefore(logger, "批量删除MessageInfo");
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				messageinfoService.deleteAll(ArrayDATA_IDS);
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
	
	
	 * 导出到excel
	 * @return
	 
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel(){
		logBefore(logger, "导出MessageInfo到excel");
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			Map<String,Object> dataMap = new HashMap<String,Object>();
			List<String> titles = new ArrayList<String>();
			titles.add("消息ID");	//1
			titles.add("用户ID");	//2
			titles.add("物品名称");	//3
			titles.add("品物类型");	//4
			titles.add("息信类型");	//5
			titles.add("态状");	//6
			titles.add("发布类型");	//7
			titles.add("日期");	//8
			titles.add("注备1");	//9
			titles.add("备注2");	//10
			titles.add("结束日期");	//11
			titles.add("失效日期");	//12
			titles.add("状态");	//13
			titles.add("删除标识（逻辑删除）");	//14
			titles.add("删除时间（逻辑删除）");	//15
			titles.add("审核状态");	//16
			dataMap.put("titles", titles);
			List<PageData> varOList = messageinfoService.listAll(pd);
			List<PageData> varList = new ArrayList<PageData>();
			for(int i=0;i<varOList.size();i++){
				PageData vpd = new PageData();
				vpd.put("var1", varOList.get(i).get("T_SY_MESSAGE_ID").toString());	//1
				vpd.put("var2", varOList.get(i).getString("T_SY_USER_ID"));	//2
				vpd.put("var3", varOList.get(i).getString("T_SY_THINGS_NAME"));	//3
				vpd.put("var4", varOList.get(i).getString("T_SY_THINGS_TYPE"));	//4
				vpd.put("var5", varOList.get(i).getString("T_SY_MESSAGE_TYPE"));	//5
				vpd.put("var6", varOList.get(i).get("T_SY_MESSAGE_STATE").toString());	//6
				vpd.put("var7", varOList.get(i).get("T_SY_SEND_TYPE").toString());	//7
				vpd.put("var8", varOList.get(i).getString("T_SY_DATE"));	//8
				vpd.put("var9", varOList.get(i).getString("T_SY_BZ1"));	//9
				vpd.put("var10", varOList.get(i).getString("T_SY_BZ2"));	//10
				vpd.put("var11", varOList.get(i).getString("T_SY_ENDDATE"));	//11
				vpd.put("var12", varOList.get(i).getString("T_SY_EXPIRATION_DATE"));	//12
				vpd.put("var13", varOList.get(i).getString("T_SY_STATUS"));	//13
				vpd.put("var14", varOList.get(i).getString("T_SY_DEL_STATUS"));	//14
				vpd.put("var15", varOList.get(i).getString("T_SY_DEL_DATE"));	//15
				vpd.put("var16", varOList.get(i).getString("T_SY_CHECK"));	//16
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
	
	 ===============================权限================================== 
	public Map<String, String> getHC(){
		Subject currentUser = SecurityUtils.getSubject();  //shiro管理的session
		Session session = currentUser.getSession();
		return (Map<String, String>)session.getAttribute(Const.SESSION_QX);
	}
	 ===============================权限================================== 
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
*/