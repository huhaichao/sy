package com.fh.controller.system.personal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;

@Controller
@RequestMapping("/myadd")
public class AddController extends BaseController{
	
	@RequestMapping("/addUser")
	public ModelAndView show(){
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/personal/user_add");
		return mv;
	}

}
