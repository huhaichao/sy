package com.fh.service.home;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.fh.dao.DaoSupport;
import com.fh.entity.home.manage.Contact;
import com.fh.util.PageData;

@Service("setHomeService")
public class SetHomeService {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	/*
	*获取首页列表
	*/
	@SuppressWarnings("unchecked")
	public List<PageData> getList(List<String> list)throws Exception{
		return (List<PageData>)dao.findForList("SetHomeMapper.getList", list);
	}
	/**
	 * 根据类型获取列表
	 * @param type
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<PageData> getFootList(int type)throws Exception{
		return (List<PageData>)dao.findForList("SetHomeMapper.getFootList", type);
	}
	/**
	 * 获取关于我们的数据信息
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<PageData> getFootText()throws Exception{
		return (List<PageData>) dao.findForList("SetHomeMapper.getFootText", null);
	}
	
	
	/**
	 * 根据listPage获取Contact内容信息
	 * @param listPage
	 * @return
	 */
	public Contact getContact(List<PageData> listPage){
		//获取对象内容信息
		Contact contact=new Contact();
		for(int i=0;i<listPage.size();i++){
			if((listPage.get(i).get("T_SY_KEY").toString()).equals("公司地址")){
				contact.setQyPath(listPage.get(i).get("T_SY_VALUE").toString());
			}else if ((listPage.get(i).get("T_SY_KEY").toString()).equals("公司电话")) {
				contact.setQyPhone(listPage.get(i).get("T_SY_VALUE").toString());
			}else if ((listPage.get(i).get("T_SY_KEY").toString()).equals("公司传真")) {
				contact.setQyCz(listPage.get(i).get("T_SY_VALUE").toString());
			}else if ((listPage.get(i).get("T_SY_KEY").toString()).equals("企业QQ")) {
				contact.setQyQQ(listPage.get(i).get("T_SY_VALUE").toString());
			}else if ((listPage.get(i).get("T_SY_KEY").toString()).equals("企业微信")) {
				contact.setQyWx(listPage.get(i).get("T_SY_VALUE").toString());
			}else if ((listPage.get(i).get("T_SY_KEY").toString()).equals("企业邮箱")) {
				contact.setQyMail(listPage.get(i).get("T_SY_VALUE").toString());
			}else if ((listPage.get(i).get("T_SY_KEY").toString()).equals("关于我们")) {
				contact.setQyGy(listPage.get(i).get("T_SY_VALUE").toString());
			}else if ((listPage.get(i).get("T_SY_KEY").toString()).equals("联系我们")) {
				contact.setQyLx(listPage.get(i).get("T_SY_VALUE").toString());
			}else if ((listPage.get(i).get("T_SY_KEY").toString()).equals("企业公众号")) {
				contact.setQyGzh(listPage.get(i).get("T_SY_VALUE").toString());
			}else if ((listPage.get(i).get("T_SY_KEY").toString()).equals("关于我们2")) {
				contact.setQyLx(listPage.get(i).get("T_SY_VALUE").toString());
			}
		}
		return contact;
	}


}
