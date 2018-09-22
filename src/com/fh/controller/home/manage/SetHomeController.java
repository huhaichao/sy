package com.fh.controller.home.manage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.entity.home.manage.Contact;
import com.fh.service.home.SetHomeService;
import com.fh.util.Const;
import com.fh.util.Freemarker;
import com.fh.util.PageData;
/** 
 * 类名称：SetHome
 * 创建人：yxx 
 * 创建时间：2017-03-16
 */
@Controller
@RequestMapping(value="/setHome")
public class SetHomeController extends BaseController{
	@Resource(name="setHomeService")
	private SetHomeService setHomeService;
	/**
	 * 访问网站管理首页设置页面
	 * @return
	 */
	@RequestMapping(value="/staticHome")
	public String toLogin() throws Exception{
		return "home/manage/staticHome";
	}
	/**
	 * 静态化首页面
	 * @return
	 * @throws Exception 
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value="/getList")
	@ResponseBody
	public String getList(){
		String bool="true";
		logBefore(logger, "静态化首页面");

		try {
			Map templateData=new HashMap();
			List<PageData> listMenu=this.getMenuList();

			System.out.println("listMenu条数:"+listMenu.size());
			List<PageData> listFoot=this.getFootList();
			System.out.println("listFoot条数:"+listFoot.size());
			List<PageData> getLinkList=this.getLinkList();
			System.out.println("getLinkList条数:"+getLinkList.size());
			List<PageData> getFooText=this.getFootText();
			System.out.println("getFootText条数:"+getFooText.size());
			templateData.put("listMenu", this.getMapPageData(listMenu));//初始化首页菜单
			templateData.put("listFoot", this.getMapPageData(listFoot));//获取跳动数据
			templateData.put("getLinkList", this.getMapPageData(getLinkList));//获取超链接数据
			templateData.put("getContact", setHomeService.getContact(getFooText));
			Freemarker.printFile("index.ftl", templateData, "index.html", "", "/templates");
		} catch (Exception e) {
			// TODO: handle exception
			bool="false";
			logBefore(logger,"静态化页面失败！"+e.getStackTrace());
		}
		
		return bool;
		//Response.Write
	}	
	/**
	 * 获取静态化首页的数据信息
	 * @return
	 * @throws Exception 
	 */
	public List<PageData> getMenuList() throws Exception{
		return setHomeService.getList(Const.LIST_MENU);
	}
	/**
	 * 获取跳动数据信息
	 * @return
	 * @throws Exception 
	 */
	public List<PageData>  getFootList() throws Exception{
		return setHomeService.getFootList(Const.T_SY_FOOT_TYPE);
	}
	/**
	 * 获取友情链接数据信息
	 * @return
	 * @throws Exception 
	 */
	public List<PageData> getLinkList() throws Exception{
		return setHomeService.getFootList(Const.T_SY_LINK_TYPE);
	}
	/**
	 * 获取网站详细介绍数据信息
	 * @return
	 * @throws Exception 
	 */
	public List<PageData> getFootText() throws Exception{
		return setHomeService.getFootText();
	}
	
	/**
	 * 转map
	 * @param pageDatas
	 * @return
	 */
	public List<Map<String, Object>> getMapPageData(List<PageData> pageDatas){
		List<Map<String, Object>> maps=new ArrayList<Map<String,Object>>();
		for(int i=0;i<pageDatas.size();i++){
			Map<String, Object> map=new HashMap<String, Object>();
			Set set = pageDatas.get(i).keySet();
			Iterator iter = set.iterator();
			while(iter.hasNext()){
				String key = (String) iter.next();
				//String key=obj.
				//System.out.println("KEY"+key+"value:"+pageDatas.get(i).get(key));
				map.put(key, pageDatas.get(i).get(key));
			}
			maps.add(map);
			
		}
		return maps;
	}
	public static void main(String[] args) throws Exception {
	    //FreeMarkerUtils.initFreeMarker("/templates");
		Map<String, Object> templateData =new HashMap<String, Object>();
		List<PageData> list=new ArrayList<PageData>();
		PageData vpd1 = new PageData();
		vpd1.put("url", "yxx1");
		vpd1.put("name", "首页");
		PageData vpd2 = new PageData();
		vpd2.put("url", "yxx2");
		vpd2.put("name", "bbbbbbbbbbbbbbbbbb");
		PageData vpd3 = new PageData();
		vpd3.put("url", "yxx3");
		vpd3.put("name", "cccccccccccccccccc");
		PageData vpd4 = new PageData();
		vpd4.put("url", "yxx4");
		vpd4.put("name", "登录");
		list.add(vpd1);
		list.add(vpd2);
		list.add(vpd3);
		list.add(vpd4);
		//kindsMap.put("home", "aaaaaaaaaaaaaaaaaaaaa");
		//kindsMap.put("list", list);
		//Freemarker.printFile("index", map, "aaaa.html", null, "/templates");
		
		
		//List<String> list2=new ArrayList<String>();
		//list2.add("a");
		//list2.add("2");
		//list2.add("3");
		//list2.add("4");
		templateData.put("list", list);
		
		//FreeMarkerUtils.crateFile(templateData, "index.ftl", "index.html", false);
		//Freemarker.print("index.ftl", templateData, "/templates");
		//Freemarker.printFile("index.ftl",templateData,"index.html","","/templates");
		
		Freemarker.printFile("index.ftl", templateData, "index.html", "", "/templates");
	}
}
