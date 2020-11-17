package com.starbucks.sw4.admin.tables.member;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {

	@GetMapping("memberLogin")
	public ModelAndView getLogin() throws SQLException, ClassNotFoundException{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/pages/memberLogin");
		return mv;
	}
	
}
