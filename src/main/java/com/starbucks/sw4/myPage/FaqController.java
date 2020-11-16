package com.starbucks.sw4.myPage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/faq/**")
public class FaqController {
	@Autowired
	private FaqService faqService;
	
	@GetMapping("faqRewardList")
	public ModelAndView getRewardList() {
		List<FaqDTO> ar =  faqService.getRewardList();
		System.out.println("faq request list 까지 옴");
		ModelAndView mv= new ModelAndView();
		mv.addObject("list", ar);
		mv.setViewName("faq/faqList");
		
		return mv;
	}
	
	@GetMapping("faqCardList")
	public ModelAndView getCardList() {
		List<FaqDTO> ar =  faqService.getCardList();
		System.out.println("faq card list 까지 옴");
		ModelAndView mv= new ModelAndView();
		mv.addObject("list", ar);
		mv.setViewName("faq/faqList");
		
		return mv;
	}
}
