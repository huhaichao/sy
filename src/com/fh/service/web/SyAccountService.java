package com.fh.service.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.util.PageData;


@Service("syaccountService")
public class SyAccountService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	

	/**
	 * 获取积分明细，参数：用户ID，积分类型
	 * @param pd
	 * @return
	 * @throws Exception
	 */	
	@SuppressWarnings("unchecked")
	public List<PageData> getIntegralIList(PageData pd)throws Exception{
		return (List<PageData>) dao.findForList("SyIntegralMapper.getIntegralList", pd);
	}
	
	/**
	 * 删除某积分记录
	 * @param pd
	 * @throws Exception
	 */
	public void deleteIntegral(PageData pd)throws Exception{
		dao.delete("SyIntegralMapper.deleteByid", pd);
	}
	
}
	