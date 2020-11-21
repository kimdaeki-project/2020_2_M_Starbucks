package com.starbucks.sw4.admin.tables.member;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.starbucks.sw4.admin.util.Pager;
import com.starbucks.sw4.store.StoreDTO;

@Controller
@RequestMapping(value = "/admin/member/**")
public class AdminMemberController {
	
	@Autowired
	private AdminMemberService adminMemberService;
	
	@GetMapping("memberList")
	public ModelAndView getPage(Pager pager,HttpSession session) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		AdminMemberDTO dto = (AdminMemberDTO) session.getAttribute("login");
		long memberCount = adminMemberService.getAdminStoreMemberCount(dto);
		String totalMember = String.format("%,d", memberCount);
		
		StoreDTO storeDTO = new StoreDTO();
		
		if (dto.getType() < 4) {
			storeDTO = adminMemberService.getAdminStore(dto);
			mv.addObject("store", storeDTO);	
		} else {
			storeDTO.setStoreName("본사 소속");
			storeDTO.setDoro_addr("서울특별시 중구 퇴계로 100 9F (04631)");
		}
		
		mv.addObject("storeMember", totalMember);
		mv.addObject("store", storeDTO);
		mv.addObject("pager", pager);
		mv.setViewName("admin/member/memberPage");
		
		return mv;
		
	}

	@GetMapping("getMemberList")
	public ModelAndView getList(Pager pager ,HttpSession session) throws ClassNotFoundException, SQLException{
		
		ModelAndView mv = new ModelAndView();

		AdminMemberDTO dto = (AdminMemberDTO)session.getAttribute("login");
		
		System.out.println("pager search type: " + pager.getSearchType());
		System.out.println("pager search: " + pager.getSearch());
		
		session.setAttribute("memberType", pager.getSearchType());
		
		pager.setSearchType((Integer)session.getAttribute("memberType"));
		pager.setStoreCode(dto.getStoreCode());
		pager.setPerPage(5);
		pager.setType(dto.getType());
		
		List<AdminMemberDTO> list = adminMemberService.getList(pager);
		
		mv.addObject("page", pager);
		mv.addObject("noticeList", list);
		mv.setViewName("admin/tables/memberList");
		
		return mv;

	}
	
}
