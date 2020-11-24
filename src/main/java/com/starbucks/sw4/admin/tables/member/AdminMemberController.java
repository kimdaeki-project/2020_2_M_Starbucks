package com.starbucks.sw4.admin.tables.member;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.starbucks.sw4.admin.tables.store.AdminStoreDTO;
import com.starbucks.sw4.admin.tables.store.AdminStoreService;
import com.starbucks.sw4.admin.tables.work.WorkTimeTableDTO;
import com.starbucks.sw4.admin.tables.work.WorkTimeTableService;
import com.starbucks.sw4.admin.util.Pager;
import com.starbucks.sw4.store.StoreDTO;

@Controller
@RequestMapping(value = "/admin/member/**")
@ResponseBody
public class AdminMemberController {
	
	@Autowired
	private AdminMemberService adminMemberService;
	@Autowired
	private WorkTimeTableService workTimeTableService;
	@Autowired
	private AdminStoreService adminStoreService;
	
	@PostMapping("memberUpdate")
	public ModelAndView setTimeTableUpdate(AdminMemberDTO dto, AdminStoreDTO sDTO, WorkTimeTableDTO wDTO) throws SQLException, ClassNotFoundException{
		
		System.out.println("member update contoller");
		
		ModelAndView mv = new ModelAndView();

		System.out.println("dto get Id num: " + dto.getNum());
		System.out.println(wDTO.getStaffId());
		wDTO.setStaffId(dto.getNum());
		System.out.println(wDTO.getMon());
		System.out.println("dto admin num: " + dto.getAdminNum());
		System.out.println("sDTO get Store Code: " + sDTO.getStoreCode());
		
		int result = workTimeTableService.setUpdate(dto, sDTO, wDTO);
		if(result > 0) {
			System.out.println("update success");
		}
		
		mv.setViewName("redirect:admin/member/memberList");
		return mv;
		
	}

	@PostMapping("memberWrite")
	public ModelAndView setInsert(AdminMemberDTO dto, WorkTimeTableDTO wDTO) throws SQLException, ClassNotFoundException{
		
		ModelAndView mv = new ModelAndView();
		
		int result = workTimeTableService.setInsert(dto, wDTO);
		
		if(result > 0) {
			System.out.println("insert success");
		}
		
		mv.setViewName("redirect:admin/member/memberList");
		return mv;
		
	}
	
	@GetMapping("memberUpdate")
	public ModelAndView getOne(AdminMemberDTO dto) throws SQLException, ClassNotFoundException{
		
		ModelAndView mv = new ModelAndView();
		
		System.out.println(dto.getNum());
		dto = adminMemberService.getOne(dto);
		
		WorkTimeTableDTO wDTO = adminMemberService.getTimeTableOne(dto);
		if(wDTO != null) {
			wDTO.timeParsing();
			mv.addObject("workTime", wDTO);
		}
		
		mv.addObject("staff", dto);
		mv.setViewName("admin/member/memberDialog");
		return mv;
		
	}
	
	@GetMapping("memberSelect")
	public ModelAndView getSelect() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/member/memberSelect");
		return mv;
	}
	
	@GetMapping("memberList")
	public ModelAndView getPage(Pager pager,HttpSession session) throws Exception{
		
		ModelAndView mv = new ModelAndView();

		StoreDTO storeDTO = new StoreDTO();
		AdminMemberDTO dto = (AdminMemberDTO) session.getAttribute("login");
		storeDTO.setStoreCode(dto.getStoreDTO().getStoreCode());
		
		long memberCount = adminStoreService.getAdminStoreMemberCount(dto, storeDTO);
		String totalMember = String.format("%,d", memberCount);
		
		if (dto.getType() < 4) {
			storeDTO = adminStoreService.getAdminStore(dto, storeDTO);
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
		pager.setStoreCode(dto.getStoreDTO().getStoreCode());
		
		System.out.println("pager get store code: "+pager.getStoreCode());
		pager.setPerPage(5);
		pager.setType(dto.getType());
		
		List<AdminMemberDTO> list = adminMemberService.getList(pager);
		
		mv.addObject("page", pager);
		mv.addObject("noticeList", list);
		mv.setViewName("admin/tables/memberList");
		
		return mv;

	}
	
}
