package com.starbucks.sw4.admin.admin;

import java.sql.SQLException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.starbucks.sw4.admin.tables.member.AdminMemberDTO;

@Controller
@RequestMapping(value = "/admin/**")
public class AdminController {
	
	@Autowired
	private AdminService adminService;

	@GetMapping("adminIndex")
	public ModelAndView getAdminIndex() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/admin/adminIndex");
		return mv;
	}
	
	@GetMapping("adminLogin")
	public ModelAndView getAdminLogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/admin/adminLogin");
		return mv;
	}
	
	@PostMapping("adminLogin")
	public ModelAndView getAdminLogin(AdminMemberDTO dto,
					HttpSession session,HttpServletResponse response) throws SQLException,ClassNotFoundException{
		
		ModelAndView mv = new ModelAndView();
		
		String id = dto.getId();
		System.out.println("로그인 아이디: " + id);
		
		dto = adminService.getAdminLogin(dto);
		System.out.println(dto);
		if (dto != null) {
			System.out.println(id + " 계정 로그인 성공");
			session.setAttribute("login", dto);
			mv.setViewName("redirect:admin/admin/adminIndex");
		} else {
			System.out.println(id + " 계정 로그인 실패");
			mv.addObject("message", "접근 권한이 없는 계정입니다.");
			mv.addObject("path", "./adminLogin");
			mv.setViewName("admin/common/result");
		}
		
		return mv;
		
	}
	
}
