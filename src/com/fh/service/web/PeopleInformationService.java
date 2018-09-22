package com.fh.service.web;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fh.controller.web.PubInfoController;
import com.fh.dao.DaoSupport;
import com.fh.dao.webMapper.PeopleInformationMapper;
import com.fh.entity.web.PeopleInformation;
import com.fh.util.PageData;

@Service
public class PeopleInformationService {
	
	protected Logger logger = LoggerFactory.getLogger(PeopleInformationService.class);
	
	@Autowired
	private PeopleInformationMapper peopleInformationMapper;
	
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/**
	 * 保存人信息
	 * @param peopleInformation
	 * @return
	 * @throws Exception 
	 */
	public  int   addPeopleInformation(String name,String age,String sex,String mz,String zj,String zjh,
			String gj,String zsdate,String zsdz,String zsdz_x,String zsdz_y,String xsje,String kl,String zmwj,String sctp,String tmtz) throws Exception{
		
		logger.info("组装 messageinfo 开始.....");
		PageData pd = new PageData();
		pd.put("T_SY_ID", 0);
		pd.put("T_SY_USER_ID", 123456);
		pd.put("T_SY_THINGS_NAME", name);
		pd.put("T_SY_THINGS_TYPE", "-1");//物品类型：-1 默认为人
		pd.put("T_SY_MESSAGE_TYPE", 0);//消息类型:0  标识发布的
		pd.put("T_SY_MESSAGE_STATE", 0);//有效
		pd.put("T_SY_SEND_TYPE", 2);//发布类型
		pd.put("T_SY_DATE", new Date());
		
		//pd.put("T_SY_STATUS", 0);//
		pd.put("T_SY_DEL_STATUS", "1");//
		pd.put("T_SY_CHECK", "0");//
		dao.save("MessageInfoMapper.save",pd);
		
		logger.info("组装 messageinfo 结束.....");
		
		logger.info("组装 PeopleInformation 开始.....");
		PeopleInformation peopleInformation = new PeopleInformation();
		peopleInformation.settSyMessageId(pd.get("T_SY_ID").toString());
		peopleInformation.settSyName(name);
		peopleInformation.settSyAge(Integer.parseInt(age));
		peopleInformation.settSySex(Integer.parseInt(sex));
		peopleInformation.settSyNation(mz);
		peopleInformation.settSyCardId(zjh);
		peopleInformation.settSyCardType(Integer.parseInt(zj));
		peopleInformation.settSyPlace(gj);
		peopleInformation.settSyLostDate(new SimpleDateFormat("yyyy-MM-dd").parse(zsdate));
		peopleInformation.settSyLostAddress(zsdz);
		peopleInformation.settSyX(zsdz_x);
		peopleInformation.settSyY(zsdz_y);
		peopleInformation.settSyBountyMoney(Double.parseDouble(xsje));
		peopleInformation.settSyPublishedDate(new Date());
		//目前没有做登录，暂且默认
		peopleInformation.settSyUserId(123456);
		
		peopleInformation.settSyPassword(Integer.parseInt(kl));
		peopleInformation.settSyProveFile(zmwj);
		peopleInformation.settSyImgpath(sctp);
		peopleInformation.settSyFeatures(tmtz);
		logger.info("组装 PeopleInformation 结束.....");
		
		logger.info("addPub_people_info 保存人物信息开始.....");
		peopleInformationMapper.insert(peopleInformation);
		logger.info("addPub_people_info 保存人物信息结束 .....");
		
		return 0;
	}
	

}
