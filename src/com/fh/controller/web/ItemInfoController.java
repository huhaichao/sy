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
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.service.web.ItemInfoService;
import com.fh.service.web.MessageInfoService;
import com.fh.entity.Page;
import com.fh.entity.web.PeopleInformation;
import com.fh.util.AppUtil;
import com.fh.util.ObjectExcelView;
import com.fh.util.Const;
import com.fh.util.PageData;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/** 
 * 类名称：ItemInfoController
 * 创建时间：2017-03-26
 */
@Controller
@RequestMapping(value="/web/pub_info")
public class ItemInfoController {
	
	protected Logger logger = LoggerFactory.getLogger(PubInfoController.class);
	
	@Resource(name="iteminfoService")
	private ItemInfoService iteminfoService;
	
	/**
	 * 新增
	 */
	@RequestMapping(value="/add_Lost_info",method={RequestMethod.POST,RequestMethod.GET})
	public @ResponseBody String  add_Lost_info(HttpServletRequest request){
		JSONObject jsons = new JSONObject();
		String  name= request.getParameter("name");
		String  wplx= request.getParameter("wplx");
		String  dsdate= request.getParameter("dsdate");
		String  dsdz= request.getParameter("dsdz");
		String  dsdz_x= request.getParameter("dsdz_x");
		String  dsdz_y= request.getParameter("dsdz_y");
		String  xsje= request.getParameter("xsje");
		String  kl= request.getParameter("kl");
		String  sctp= request.getParameter("sctp");
		String  wpms= request.getParameter("wpms");
		
		logger.info("addPub_people_info 入参为：name="+name+",dsdate="+dsdate
				+ ",dsdz="+dsdz+",xsje="+xsje+",kl="+kl+",wplx="+wplx+",sctp="+sctp+",wpms="+wpms);
		
		try {
			iteminfoService.save_lost(name, dsdate, dsdz,dsdz_x,dsdz_y, xsje, kl, wplx, sctp, wpms);
		} catch (Exception e) {
			logger.info("保存失物信息出现异常.....exception:"+e.getMessage());
		}
		
		jsons.put("RESULT","SUCCESS");
		return jsons.toString();
	}
	
	
	/**
	 * 新增
	 */
	@RequestMapping(value="/add_pickup_info",method={RequestMethod.POST,RequestMethod.GET})
	public @ResponseBody String  add_pickup_info(HttpServletRequest request){
		JSONObject jsons = new JSONObject();
		String  name= request.getParameter("name");
		String  wplx= request.getParameter("wplx");
		String  dsdate= request.getParameter("dsdate");
		String  dsdz= request.getParameter("dsdz");
		String  dsdz_x= request.getParameter("dsdz_x");
		String  dsdz_y= request.getParameter("dsdz_y");
		/*String  xsje= request.getParameter("xsje");
		String  kl= request.getParameter("kl");*/
		String  sctp= request.getParameter("sctp");
		String  wpms= request.getParameter("wpms");
		
		logger.info("addPub_people_info 入参为：name="+name+",dsdate="+dsdate
				+ ",wplx,"+wplx+"dsdz="+dsdz+",sctp="+sctp+",wpms="+wpms);
		
		try {
			iteminfoService.save_pickup(name, dsdate, dsdz,dsdz_x,dsdz_x , wplx, sctp, wpms);
		} catch (Exception e) {
			logger.info("保存失物信息出现异常.....exception:"+e.getMessage());
		}
		jsons.put("RESULT","SUCCESS");
		return jsons.toString();
	}
	
	
	@RequestMapping(value="/initWplx",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody String initWplx(){
		logger.info("初始化物品类型数据字典开始......");
		//PageData pd = new PageData();
		JSONArray jsons = new JSONArray();
		try {
			List<PageData> list = iteminfoService.list_dic();
			jsons.addAll(list);
			logger.info("初始化物品类型数据字典成功.......");
		} catch (Exception e) {
			logger.info("初始化物品类型数据字典失败....异常信息："+e.getMessage());
		}
		return jsons.toString();
	}
	
	
	/**
	 * 删除
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out){/*
		logBefore(logger, "删除ItemInfoController");
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			iteminfocontrollerService.delete(pd);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	*/}
	
	/**
	 * 修改
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() {/*
		logBefore(logger, "修改ItemInfoController");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		iteminfocontrollerService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		
	*/
		return null;	
	}
	
	/**
	 * 列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){/*
		logBefore(logger, "列表ItemInfoController");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData>	varList = iteminfocontrollerService.list(page);	//列出ItemInfoController列表
			mv.setViewName("web/iteminfocontroller/iteminfocontroller_list");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	*/
		return null;	
	}
	
	/**
	 * 去新增页面
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd(){/*
		logBefore(logger, "去新增ItemInfoController页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			mv.setViewName("web/iteminfocontroller/iteminfocontroller_edit");
			mv.addObject("msg", "save");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	*/
		return null;		
	}	
	
	/**
	 * 去修改页面
	 */
	@RequestMapping(value="/goEdit")
	public ModelAndView goEdit(){/*
		logBefore(logger, "去修改ItemInfoController页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			pd = iteminfocontrollerService.findById(pd);	//根据ID读取
			mv.setViewName("web/iteminfocontroller/iteminfocontroller_edit");
			mv.addObject("msg", "edit");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	*/
		return null;	
	}	
	
	/**
	 * 批量删除
	 */
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() {/*
		logBefore(logger, "批量删除ItemInfoController");
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				iteminfocontrollerService.deleteAll(ArrayDATA_IDS);
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
	*/
		return null;	
		}
	
	/*
	 * 导出到excel
	 * @return
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel(){/*
		logBefore(logger, "导出ItemInfoController到excel");
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			Map<String,Object> dataMap = new HashMap<String,Object>();
			List<String> titles = new ArrayList<String>();
			titles.add("主键ID");	//1
			titles.add("消息ID");	//2
			titles.add("用户信息表ID");	//3
			titles.add("物品名称");	//4
			titles.add("物品类型");	//5
			titles.add("失丢日期");	//6
			titles.add("赏悬金额");	//7
			titles.add("失丢地点");	//8
			titles.add("品物描述");	//9
			titles.add("令口");	//10
			titles.add("发布日期");	//11
			titles.add("度精");	//12
			titles.add("纬度");	//13
			titles.add("片图地址");	//14
			titles.add("注备1");	//15
			dataMap.put("titles", titles);
			List<PageData> varOList = iteminfocontrollerService.listAll(pd);
			List<PageData> varList = new ArrayList<PageData>();
			for(int i=0;i<varOList.size();i++){
				PageData vpd = new PageData();
				vpd.put("var1", varOList.get(i).get("T_SY_ITEM_INFORMATION_ID").toString());	//1
				vpd.put("var2", varOList.get(i).getString("T_SY_MESSAGE_ID"));	//2
				vpd.put("var3", varOList.get(i).getString("T_SY_USER_ID"));	//3
				vpd.put("var4", varOList.get(i).getString("T_SY_ITEM_NAME"));	//4
				vpd.put("var5", varOList.get(i).getString("T_SY_ITEM_TYPE"));	//5
				vpd.put("var6", varOList.get(i).getString("T_SY_LOSE_DATE"));	//6
				vpd.put("var7", varOList.get(i).get("T_SY_BOUNTY_MONEY").toString());	//7
				vpd.put("var8", varOList.get(i).get("T_SY_LOSE_ADDRESS").toString());	//8
				vpd.put("var9", varOList.get(i).getString("T_SY_ITEM_DESCRIBE"));	//9
				vpd.put("var10", varOList.get(i).get("T_SY_ITEM_PASSWORD").toString());	//10
				vpd.put("var11", varOList.get(i).getString("T_SY_PUBLISHED_DATE"));	//11
				vpd.put("var12", varOList.get(i).getString("T_SY_X"));	//12
				vpd.put("var13", varOList.get(i).getString("T_SY_Y"));	//13
				vpd.put("var14", varOList.get(i).getString("T_SY_IMGPATH"));	//14
				vpd.put("var15", varOList.get(i).getString("T_SY_BZ1"));	//15
				varList.add(vpd);
			}
			dataMap.put("varList", varList);
			ObjectExcelView erv = new ObjectExcelView();
			mv = new ModelAndView(erv,dataMap);
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	*/
		return null;		
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
