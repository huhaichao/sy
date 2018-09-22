package com.fh.controller.web;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fh.service.web.PeopleInformationService;

import net.sf.json.JSONObject;

/**
 * 
 * @author huchao
 * 2017-03-08
 * 发布信息类
 */
@Controller
@RequestMapping("/web/pub_info/")
public class PubInfoController  {
	
	protected Logger logger = LoggerFactory.getLogger(PubInfoController.class);
	
	@Autowired
	private PeopleInformationService peopleInformationService;
	
	@RequestMapping(value="peoplelist",method={RequestMethod.POST,RequestMethod.GET})
	public String getpeoplelist(){

		return "web/browse/people_list";
	}
	
	@RequestMapping(value="add_people_info",method={RequestMethod.POST,RequestMethod.GET})
	public @ResponseBody String addPub_people_info(HttpServletRequest request){
		JSONObject jsons = new JSONObject();
		String  name= request.getParameter("name");
		String  age= request.getParameter("age");
		String  sex= request.getParameter("sex");
		String  mz= request.getParameter("mz");
		String  zj= request.getParameter("zj");
		String  zjh= request.getParameter("zjh");
		String  gj= request.getParameter("gj");
		String  zsdate= request.getParameter("zsdate");
		String  zsdz= request.getParameter("zsdz");
		String  zsdz_x= request.getParameter("zsdz_x");
		String  zsdz_y= request.getParameter("zsdz_y");
		String  xsje= request.getParameter("xsje");
		String  kl= request.getParameter("kl");
		String  zmwj= request.getParameter("zmwj");
		String  sctp= request.getParameter("sctp");
		String  tmtz= request.getParameter("tmtz");
		
		logger.info("addPub_people_info 入参为：name="+name+",age="+age+",sex="+sex+","
				+ "mz="+mz+",zj="+zj+",zjh="+zjh+",gj="+gj+",zsdate="+zsdate
				+ ",zsdz="+zsdz+",xsje="+xsje+",kl="+kl+",zmwj="+zmwj+",sctp="+sctp+",tmtz="+tmtz);
		try {
			peopleInformationService.addPeopleInformation(name, age, sex, mz, zj, zjh, gj, zsdate, zsdz,zsdz_x,zsdz_y, xsje, kl, zmwj, sctp, tmtz);
		} catch (Exception e) {
			logger.info("保存人物信息出现异常.....exception:"+e.getMessage());
		}
		jsons.put("RESULT","SUCCESS");
		return jsons.toString();
	}
	

}
