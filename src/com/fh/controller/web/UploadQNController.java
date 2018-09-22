package com.fh.controller.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fh.util.Constant;
import com.qiniu.util.Auth;
import com.qiniu.util.StringMap;

import net.sf.json.JSONObject;

/**
 * 七牛云上传，下载凭证管理
 * @author huchao
 *
 */
@Controller
@RequestMapping("/web/UploadQN/")
public class UploadQNController {
	
	private final Logger log = LoggerFactory.getLogger(UploadQNController.class);
	
	/**
	 * 获取上传tonken
	 * @return
	 */
	@RequestMapping("/uploadTonken")
	public @ResponseBody String getUploadTonken(
		   @RequestParam(value="keyValue",required=true) String key){ 
		
		 log.info("获取上传tonken.......");
		 Auth auth = Auth.create(Constant.ACCESSKEY, Constant.SECRETKEY);		
		 String uploadToken = auth.uploadToken(Constant.BUCKETNAME, key);
		 JSONObject  jo = new JSONObject();
		 log.info("返回上传tonken["+uploadToken+"].......");
		 jo.put("uploadToken", uploadToken);
		 
		 return jo.toString();
	}
	
	
	/**
	 * 获取私有资源下载tonken
	 * baseurl 下载的资源url
	 * @return
	 */
	@RequestMapping("/downloadTonken")
	public @ResponseBody String getDownloadTonken(
		   @RequestParam(value="keyName",required=true) String keyName){ 
		 String baseurl = Constant.DOWLOADBASEURL+keyName;
		 log.info("["+baseurl+"]获取下载tonken.......");		
		 Auth auth = Auth.create(Constant.ACCESSKEY, Constant.SECRETKEY);		
		 String uploadToken = auth.privateDownloadUrl(baseurl);
		 JSONObject  jo = new JSONObject();
		 log.info("返回下载tonken["+uploadToken+"].......");
		 jo.put("downloadTonken", uploadToken);
		 
		 return jo.toString();
	}
	
	/**
	 * 获取私有资源下载tonken
	 * baseurl 下载的资源url
	 * @return
	 */
	@RequestMapping("/managerTonken")
	public @ResponseBody String getManagerTonken(
		   @RequestParam(value="url",required=true) String url){ 
		 //String baseurl = Constant.DOWLOADBASEURL+keyName;
		 log.info("["+url+"]获取下载tonken.......");		
		 Auth auth = Auth.create(Constant.ACCESSKEY, Constant.SECRETKEY);		
		 StringMap sm = auth.authorizationV2(url);
		 log.info("返回下载tonken["+sm+"].......");
		 
		 return sm.toString();
	}
	

}
