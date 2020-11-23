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
import com.starbucks.sw4.store.StoreDTO;

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
	
	@GetMapping("adminLogout")
	public ModelAndView getMemberLogout(HttpSession sessions) throws Exception {
		// 로그아웃 실행시 유지 시간 0초로 수정
		ModelAndView mv = new ModelAndView();
		sessions.invalidate();
		mv.addObject("message", "로그아웃하였습니다.");
		mv.addObject("path", "../admin/adminLogin");
		mv.setViewName("admin/common/result");
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
			if(dto.getType() == 4) {
				StoreDTO storeDTO = new StoreDTO();
				storeDTO.setStoreName("본사 소속");
				storeDTO.setDoro_addr("서울특별시 중구 퇴계로 100 9F (04631)");
				dto.setStoreDTO(storeDTO);
			}
			session.setAttribute("login", dto);
			session.setAttribute("memberType", 0);
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
