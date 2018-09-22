package com.fh.controller.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fh.entity.web.SyUser;
import com.fh.service.system.menu.MenuService;
import com.fh.service.web.SyUserService;
import com.fh.util.Const;
import com.fh.util.DateUtil;
import com.fh.util.PageData;

import net.sf.json.JSONObject;


/**
 * 初始化页面的文件头与文件尾
 * @author huchao
 *
 */
@Controller
@RequestMapping("/initMenu")
public class BuildMenuController {
	
	private final  Logger  log= LoggerFactory.getLogger(BuildMenuController.class);
	
	@Resource(name="menuService")
	private MenuService menuService;
	
	@Resource(name="syuserService")
	private SyUserService userService;
	
	/**
	 * 显示菜单列表
	 * @param model
	 * @return
	 */
	@RequestMapping
	public @ResponseBody String list()throws Exception{
		log.info("初始化首页开始.....");
		JSONObject result = new JSONObject();
		PageData syuser = null;
		PageData pd = new PageData();
		Subject currentUser = SecurityUtils.getSubject(); 
		if(currentUser!=null){
			Session session = currentUser.getSession();		
			SyUser sessionuser=(SyUser)session.getAttribute(Const.SESSION_SY_USER);
			if(sessionuser!=null){
				pd.put("tSyPhone", sessionuser.gettSyPhone());
			    syuser=(PageData)userService.findByPhone(pd);
			    result.put("result", "login");	
			    result.put("syname",syuser.getString("T_SY_USERNAME").trim().length()==0?syuser.getString("T_SY_PHONE"):syuser.getString("T_SY_USERNAME"));
			    result.put("syphone", syuser.getString("T_SY_PHONE"));
			    result.put("sysex", ((Integer)syuser.get(("T_SY_SEX"))));
			    result.put("sycard", syuser.getString("T_SY_CARDID"));
			    result.put("sync",syuser.getString("T_SY_NICKNAME").trim().length()==0?syuser.getString("T_SY_PHONE"):syuser.getString("T_SY_NICKNAME") );
			    result.put("sybri", (Date)syuser.get("T_SY_DATEOFBIRTH") == null ?DateUtil.fomatDate(DateUtil.getTime()): (Date)syuser.get("T_SY_DATEOFBIRTH"));	  
			    result.put("syemail", syuser.getString("T_SY_MAIL"));
			    result.put("sybz", syuser.getString("T_SY_BZ1"));
			    result.put("syimg", syuser.getString("T_SY_IMGPATH"));	
			    List<PageData> menuList = menuService.getMenus();
			    //菜单分类
			    HashMap<String,List<String>> resultMap = new HashMap<String,List<String>> ();
			    for(PageData pad :menuList){
			    	String key = pad.getString("parent_id")+"|"+pad.getString("parent_url")+"|"+pad.getString("parent_name");
			    	String value =pad.getString("T_SY_MENU_SUBMENU_ID")+"|"+pad.getString("T_SY_MENU_URL")+"|"+pad.getString("T_SY_MENU_NAME");
			    	if (resultMap.containsKey(key)){
			    		List<String> list = resultMap.get(key);
			    		list.add(value);
			    	}else {
			    		List<String> list =new ArrayList<String>();
			    		list.add(value);
			    		resultMap.put(key,list);
			    	}
			    }
			    JSONObject jsonMenu = new JSONObject();
			    jsonMenu.putAll(resultMap);
			    result.put("menu", jsonMenu);
			}else{
				result.put("result", "logout");
			}
		}else{
			result.put("result", "logout");
		}
		
		log.info("返回菜单信息.......");
		
		return result.toString();
	}
	 

}
