package com.fh.service.home;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.util.PageData;


@Service("usersyService")
public class UserSyService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/*
	* 新增
	*/
	public void save(PageData pd)throws Exception{
		dao.save("UserSyMapper.save", pd);
	}
	
	/*
	* 物理删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("UserSyMapper.delete", pd);
	}
	
	/*
	 * 逻辑删除
	 *  add zbb 2017-03-22
	 */
	public void deleteUpd(PageData pd) throws Exception {
		dao.delete("UserSyMapper.deleteUpd", pd);
	}
	
	/*
	 * 还原
	 *  add zbb 2017-03-22
	 */
	public void restore(PageData pd) throws Exception {
		dao.delete("UserSyMapper.restore", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("UserSyMapper.edit", pd);
	}
	
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("UserSyMapper.userlistPage", page);
	}
	
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("UserSyMapper.listAll", pd);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("UserSyMapper.findById", pd);
	}
	
	/*
	* 批量物理删除
	*/
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("UserSyMapper.deleteAll", ArrayDATA_IDS);
	}
	
	/*
	* 批量逻辑删除
	* add zbb 2017-03-22
	*/
	public void deleteAllUpd(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("UserSyMapper.deleteAllUpd", ArrayDATA_IDS);
	}
	
	/*
	* 批量还原
	* add zbb 2017-03-22
	*/
	public void restoreAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("UserSyMapper.restoreAll", ArrayDATA_IDS);
	}
}

