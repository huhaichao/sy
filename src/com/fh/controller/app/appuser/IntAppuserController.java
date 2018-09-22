package com.fh.controller.app.appuser;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fh.controller.base.BaseController;
import com.fh.entity.Demo;
import com.fh.service.system.appuser.AppuserService;
import com.fh.util.AppUtil;
import com.fh.util.PageData;
import com.fh.util.Tools;


/**
  * 会员-接口类 
  *    
  * 相关参数协议：
  * 00	请求失败
  * 01	请求成功
  * 02	返回空值
  * 03	请求协议参数不完整    
  * 04  用户名或密码错误
  * 05  FKEY验证失败
 */
@Controller
@RequestMapping(value="/appuser")
public class IntAppuserController extends BaseController {
    
	@Resource(name="appuserService")
	private AppuserService appuserService;
	
	/**
	 * 根据用户名获取会员信息
	 */
	@RequestMapping(value="/getAppuserByUm")
	@ResponseBody
	public Object getAppuserByUsernmae(){
		logBefore(logger, "根据用户名获取会员信息");
		Map<String,Object> map = new HashMap<String,Object>();
		PageData pd = new PageData();
		pd = this.getPageData();
		String result = "00";
		
		try{
			if(Tools.checkKey("USERNAME", pd.getString("FKEY"))){	//检验请求key值是否合法
				if(AppUtil.checkParam("getAppuserByUsernmae", pd)){	//检查参数
					pd = appuserService.findByUId(pd);
					
					map.put("pd", pd);
					result = (null == pd) ?  "02" :  "01";
					
				}else {
					result = "03";
				}
			}else{
				result = "05";
			}
		}catch (Exception e){
			logger.error(e.toString(), e);
		}finally{
			map.put("result", result);
			logAfter(logger);
		}
		return AppUtil.returnObject(new PageData(), map);
	}
	
	
	/**
	 * https://127.0.0.1:8080/sy/server/app/save?name=demo&desc=demo-test
	 * 保存
	 * @param name
	 * @param desc
	 * @return
	 */
	@RequestMapping(value="/save",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody Object getName(@RequestParam(value="name",required=false)String name,
			@RequestParam(value="desc",required=false)String desc                        
			){
		  logger.info("demo save start.....");
		   //Demo  d  = new Demo();
		   //d.setId(Long.valueOf("1234567"));
		   //d.setDemoname(name);
		   //d.setDate(new Date());
		   //d.setDemodesc(desc.getBytes());
		   //demoService.insert(d);
		  Demo demo=new Demo();
		  demo.setName("11111");
		  demo.setPath("222222");
		  Map<String,Object> map = new HashMap<String,Object>();
		  map.put("Dome", demo);
		  logger.info("demo save end.....");
		  return AppUtil.returnObject(new PageData(), map);
		  // return " ";   
	}
}
	
 