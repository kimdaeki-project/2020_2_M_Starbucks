package com.starbucks.sw4.error;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/error/**")
public class ErrorPageController {

	@GetMapping("errorUrl")
	public ModelAndView errorUrl() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("error/errorUrl");
		
		return mv;
	}
	
	@GetMapping("errorLogin")
	public ModelAndView errorLogin() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("error/errorLogin");
		
		return mv;
	}
}
