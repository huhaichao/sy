package com.fh.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fh.controller.base.BaseController;

/** 
 * 类名称：DownLoadController
 * 创建人：zbb 
 * 创建时间：2017-03-19
 */
@Controller
@RequestMapping(value="/downLoad")
public class DownLoadController extends BaseController {
	
	/**
	 * 访问后台菜单管理页面
	 * @return
	 */
	@RequestMapping(value="/qrcode")
	public String toDownLoad() throws Exception{
		return "web/download/qrcode";
	}
}
