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
	
	@GetMapping("faqList")
	public ModelAndView getList() {
		List<FaqDTO> ar =  faqService.getList();
		System.out.println("faqlist 까지 옴");
		ModelAndView mv= new ModelAndView();
		mv.addObject("list", ar);
		mv.setViewName("faq/faqList");
		
		return mv;
	}
}
