package com.starbucks.sw4.my.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/faq/**")
public class FaqController {
	@Autowired
	private FaqService faqService;
	
	@GetMapping("faqRewardList")
	public ModelAndView getRewardList(@RequestParam(defaultValue ="1") int curPage)throws Exception {
		System.out.println("curpage:" +curPage);
		ModelAndView mv= new ModelAndView();
		
		Pager pager = new Pager();
		pager.setStartRow((curPage-1)*10+1);
		pager.setLastRow(curPage*10);
		
		List<FaqDTO> ar =  faqService.getRewardList(pager);
		
		mv.addObject("list", ar);
		mv.addObject("count", pager.getTotalCount()/10);
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
