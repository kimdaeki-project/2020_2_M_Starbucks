package com.starbucks.sw4.admin.tables.member;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.starbucks.sw4.admin.util.Pager;

@Controller
@RequestMapping(value = "/admin/member/**")
public class AdminMemberController {
	
	@Autowired
	private AdminMemberService adminMemberService;

	@GetMapping("memberList")
	public ModelAndView getList(Pager pager ,HttpSession session) throws ClassNotFoundException, SQLException{
		
		ModelAndView mv = new ModelAndView();
		
		AdminMemberDTO dto = (AdminMemberDTO)session.getAttribute("login");
		
		pager.setStoreCode(dto.getStoreCode());
		pager.setPerPage(5);
		pager.setType(dto.getType());
		
		List<AdminMemberDTO> list = adminMemberService.getList(pager);

		mv.addObject("noticeList", list);
		mv.addObject("page", pager);
		mv.setViewName("admin/member/memberList");
		
		return mv;

	}
	
}
