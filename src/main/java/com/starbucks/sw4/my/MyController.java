package com.starbucks.sw4.my;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/my/**")
public class MyController {
	@Autowired
	private MyService myService;
	
	
	@GetMapping("findMyInfo")
	public void findMyInfo() {
		
	}
	
	@GetMapping("myIndex")
	public ModelAndView myIndex(MyDTO myDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		MyDTO star = myService.getStarCount();
		if(star.getGrade()==2) {
			mv.addObject("grade", "green level");
		}else if(star.getGrade()==3) {
			mv.addObject("grade", "gold level");
		}else {
			mv.addObject("grade", "welcome level");
		}
		mv.addObject("star", star);
		long num = 30 -star.getStarCount();
		mv.addObject("num", num);
		mv.setViewName("my/myIndex");
		
		return mv;
	}
}
