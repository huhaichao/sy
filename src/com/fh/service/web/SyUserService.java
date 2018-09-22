package com.fh.service.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.entity.system.User;
import com.fh.util.PageData;

/**
 * sy用户基础操作类（如登录，修改密码，注册，修改个人信息等）
 * @author yumeng
 */

@Service("syuserService")
public class SyUserService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	

	/*
	* 通过手机获取数据
	*/
	public PageData findByPhone(PageData pd)throws Exception{
		return (PageData)dao.findForObject("SyUserMapper.findByPhone", pd);
	}

	
	/*
	*用户列表(全部)
	*/
//	@SuppressWarnings("unchecked")
//	public List<PageData> listAllUser(PageData pd)throws Exception{
//		return (List<PageData>) dao.findForList("SyUserMapper.listAllUser", pd);
//	}
//	

	/*
	* 保存用户IP
	*/
	public void editU(PageData pd)throws Exception{
		dao.update("SyUserMapper.editU", pd);
	}
	
	/*
	* 保存用户IP
	*/
	public void editByPhone(PageData pd)throws Exception{
		dao.update("SyUserMapper.editByPhone", pd);
	}
	
	/*
	* 登录判断
	*/
	public PageData getUserByNameAndPwd(PageData pd)throws Exception{
		return (PageData)dao.findForObject("SyUserMapper.getUserInfo", pd);
	}
	/*
	* 跟新登录时间
	*/
	public void updateLastLogin(PageData pd)throws Exception{
		dao.update("SyUserMapper.updateLastLogin", pd);
	}
	
	/**
	 * 注册手机新用户
	 * @param pd
	 * @throws Exception
	 */
	public void saveNewSyUser(PageData pd)throws Exception{
		dao.save("SyUserMapper.insertUser", pd);
	}

	/**
	 * 修改密码
	 * @param pd
	 * @throws Exception
	 */
	public void updatePassword(PageData pd)throws Exception{
		dao.update("SyUserMapper.updatePassword", pd);
	}
}
