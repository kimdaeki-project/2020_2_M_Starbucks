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
	public ModelAndView getRewardList(Pager pager)throws Exception {
		
		
		ModelAndView mv= new ModelAndView();
		
		
		
		List<FaqDTO> ar =  faqService.getRewardList(pager);
		
		mv.addObject("board", "스타벅스 리워드");
		mv.addObject("title", "faqReward");
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.addObject("count", (pager.getTotalCount()/10)+1);
		mv.setViewName("faq/faqList");
		
		return mv;
	}
	
	@GetMapping("faqCardList")
	public ModelAndView getCardList(@RequestParam(defaultValue ="1") int curPage) throws Exception {
		ModelAndView mv= new ModelAndView();
		
		Pager pager = new Pager();
		pager.setStartRow((curPage-1)*10+1);
		pager.setLastRow(curPage*10);
		pager.setType("card");
		
		List<FaqDTO> ar =  faqService.getCardList(pager);
		
		
		mv.addObject("board", "스타벅스 카드");
		mv.addObject("title", "faqCard");
		mv.addObject("list", ar);
		mv.addObject("count", pager.getTotalCount()/10);
		mv.setViewName("faq/faqList");                                      
		
		return mv;
	}
	
	@GetMapping("faqGiftCardList")
	public ModelAndView getGiftCardList(Pager pager)throws Exception {

		ModelAndView mv= new ModelAndView();
	
		List<FaqDTO> ar =  faqService.getGiftCardList(pager);
		
		mv.addObject("board", "e-Gift Card");
		mv.addObject("title", "faqGiftCard");
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.addObject("count", (pager.getTotalCount()/10)+1);
		mv.setViewName("faq/faqList");
		
		return mv;
	}
}
