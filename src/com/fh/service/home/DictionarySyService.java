package com.fh.service.home;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.util.PageData;


@Service("dictionarysyService")
public class DictionarySyService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/*
	* 新增
	*/
	public void save(PageData pd)throws Exception{
		dao.save("DictionarySyMapper.save", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("DictionarySyMapper.delete", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("DictionarySyMapper.edit", pd);
	}
	
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("DictionarySyMapper.datalistPage", page);
	}
	
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("DictionarySyMapper.listAll", pd);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("DictionarySyMapper.findById", pd);
	}
	
	/*
	* 批量删除
	*/
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("DictionarySyMapper.deleteAll", ArrayDATA_IDS);
	}
	
	
	/*
	* 通过类型获取数据
	*/
	public List<PageData> findByType()throws Exception{
		return (List<PageData>)dao.findForList("DictionarySyMapper.findByType", null);
	}
	
	/*
	* 通过广告类型获取数据
	*/
	public List<PageData> findByGgType()throws Exception{
		return (List<PageData>)dao.findForList("DictionarySyMapper.findByGgType", null);
	}
}

