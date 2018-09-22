package com.fh.controller.system.personal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.entity.QueryVO;
import com.fh.service.system.personal.QueryService;

/**
 * 私人定制
 * @author link
 */
@RequestMapping("/myquery")
@Controller
public class QueryController extends BaseController {
	
	@Autowired 
	private QueryService queryUser;
	
	@RequestMapping(value="/user_list")
	public ModelAndView show(){
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/personal/user_list");
		return mv;
	}
	
	@RequestMapping("/userList")
	public ModelAndView query(QueryVO queryVO) throws Exception{
		ModelAndView mv = this.getModelAndView();
		
		List<QueryVO> list = queryUser.getItemsList(queryVO);
		mv.setViewName("system/personal/user_list");
		mv.addObject("userList", list);
		return mv;
	}
}
