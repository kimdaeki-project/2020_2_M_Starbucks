package com.starbucks.sw4.admin.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/notice/**")
public class BoardController {
	
	@GetMapping("noticeList")
	public ModelAndView getList() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/board/boardList");
		return mv;
	}
	
}
