package com.fh.service.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.fh.controller.web.PubInfoController;
import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.util.PageData;


@Service("iteminfoService")
public class ItemInfoService {

	protected Logger logger = LoggerFactory.getLogger(ItemInfoService.class);
	
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/*
	* 新增
	*/
	public void save_lost(String name,String dsdate,String dsdz,String dsdz_x,String dsdz_y,String xsje,String kl,String wplx,String sctp,String wpms) throws Exception{
		
		logger.info("save_Lost 组装 messageinfo 开始.....");
		PageData pd = new PageData();
		pd.put("T_SY_ID", 0);
		pd.put("T_SY_USER_ID", 123456);
		pd.put("T_SY_THINGS_NAME", name);
		pd.put("T_SY_THINGS_TYPE", wplx);//物品类型：-1 默认为人
		pd.put("T_SY_MESSAGE_TYPE", 0);//消息类型:0  标识发布的
		pd.put("T_SY_MESSAGE_STATE", 0);//有效
		pd.put("T_SY_SEND_TYPE", 1);//发布类型
		pd.put("T_SY_DATE", new Date());
		//pd.put("T_SY_STATUS", 0);//
		pd.put("T_SY_DEL_STATUS", "1");//
		pd.put("T_SY_CHECK", "0");//
		dao.save("MessageInfoMapper.save", pd);
		
		logger.info("save_Lost 组装 messageinfo 结束.....");
		int MESSAGE_ID =(Integer)pd.get("T_SY_ID");
		pd.clear();
		logger.info("save_Lost 组装 Iteminfo 开始.....");
		pd.put("T_SY_MESSAGE_ID", MESSAGE_ID);
		pd.put("T_SY_USER_ID", 123456);
		pd.put("T_SY_ITEM_NAME", name);
		pd.put("T_SY_ITEM_TYPE", wplx);//物品类型：-1 默认为人
		pd.put("T_SY_LOSE_DATE", new SimpleDateFormat("yyyy-MM-dd").parse(dsdate));//消息类型:0  标识发布的
		pd.put("T_SY_BOUNTY_MONEY", xsje);//
		pd.put("T_SY_ITEM_PASSWORD", kl);//
		pd.put("T_SY_PUBLISHED_DATE", new Date());
		pd.put("T_SY_LOSE_ADDRESS",dsdz);//
		pd.put("T_SY_ITEM_DESCRIBE", wpms);//
		pd.put("T_SY_IMGPATH", sctp);//
		pd.put("T_SY_X", dsdz_x);//
		pd.put("T_SY_Y", dsdz_y);//
		logger.info("组装 Iteminfo 结束.....");
		
		logger.info("save_Lost 保存失物信息开始.....");
		dao.save("ItemInfoMapper.save", pd);
		logger.info("save_Lost 保存失物信息结束 .....");
	}
	
	
    public void save_pickup(String name,String dsdate,String dsdz,String dsdz_x,String dsdz_y,String wplx,String sctp,String wpms) throws Exception{
		
		logger.info("save_pickup 组装 messageinfo 开始.....");
		PageData pd = new PageData();
		pd.put("T_SY_ID", 0);
		pd.put("T_SY_USER_ID", 123456);
		pd.put("T_SY_THINGS_NAME", name);
		pd.put("T_SY_THINGS_TYPE", wplx);//物品类型：-1 默认为人
		pd.put("T_SY_MESSAGE_TYPE", 0);//消息类型:0  标识发布的
		pd.put("T_SY_MESSAGE_STATE", 0);//有效
		pd.put("T_SY_SEND_TYPE", 0);//发布类型
		pd.put("T_SY_DATE", new Date());
		//pd.put("T_SY_STATUS", 0);//
		pd.put("T_SY_DEL_STATUS", "1");//
		pd.put("T_SY_CHECK", "0");//
		dao.save("MessageInfoMapper.save", pd);
		
		logger.info("save_pickup 组装 messageinfo 结束.....");
		int MESSAGE_ID =(Integer)pd.get("T_SY_ID");
		pd.clear();
		logger.info("save_Lost 组装 Iteminfo 开始.....");
		pd.put("T_SY_MESSAGE_ID", MESSAGE_ID);
		pd.put("T_SY_USER_ID", 123456);
		pd.put("T_SY_ITEM_NAME", name);
		pd.put("T_SY_ITEM_TYPE", wplx);//物品类型：-1 默认为人
		pd.put("T_SY_LOSE_DATE", new SimpleDateFormat("yyyy-MM-dd").parse(dsdate));//消息类型:0  标识发布的
		/*pd.put("T_SY_BOUNTY_MONEY", xsje);//
		pd.put("T_SY_ITEM_PASSWORD", kl);//*/		
		pd.put("T_SY_PUBLISHED_DATE", new Date());
		pd.put("T_SY_LOSE_ADDRESS",dsdz);//
		pd.put("T_SY_ITEM_DESCRIBE", wpms);//
		pd.put("T_SY_IMGPATH", sctp);//
		pd.put("T_SY_X", dsdz_x);//
		pd.put("T_SY_Y", dsdz_y);//
		logger.info("组装 Iteminfo 结束.....");
		
		logger.info("save_pickup 保存拾物信息开始.....");
		dao.save("ItemInfoMapper.save", pd);
		logger.info("save_pickup 保存拾物信息结束 .....");
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("ItemInfoMapper.delete", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("ItemInfoMapper.edit", pd);
	}
	
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("ItemInfoMapper.datalistPage", page);
	}
	
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("ItemInfoMapper.listAll", pd);
	}
	
	/*
	*数据字典列表
	*/
	public List<PageData> list_dic()throws Exception{
		return (List<PageData>)dao.findForList("ItemInfoMapper.selectDict",null);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("ItemInfoMapper.findById", pd);
	}
	
	/*
	* 批量删除
	*/
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("ItemInfoMapper.deleteAll", ArrayDATA_IDS);
	}
	
}

