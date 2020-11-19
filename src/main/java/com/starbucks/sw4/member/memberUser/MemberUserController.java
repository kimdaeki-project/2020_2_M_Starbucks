package com.starbucks.sw4.member.memberUser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.starbucks.sw4.member.MemberDTO;

@Controller
@RequestMapping(value="/member/**")
public class MemberUserController {
	
	@Autowired
	private MemberUserService memberUserService;
	
	@GetMapping("memberLogin")
	public ModelAndView getMemberLogin() throws Exception {
		System.out.println("Controller -- MemberUserLogin");
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("customer01");
		System.out.println(memberUserService.getMemberLogin(memberDTO));
		mv.setViewName("member/memberLogin");
		
		return mv;
	}
	
	@GetMapping("memberJoin")
	public ModelAndView setMemberJoin() throws Exception {
		System.out.println("Controller -- MemberUSerJoin");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/memberJoin");
		
		return mv;
	}
		
}
