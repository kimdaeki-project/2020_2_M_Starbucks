package com.starbucks.sw4.my;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/my/**")
public class MyController {
	@Autowired
	private MyService myService;
	
	@GetMapping("modifyPW")
	public void modifyPW () {
		
	}
	
	@PostMapping("updateMyInfo")
	public ModelAndView setUpdate(MyDTO myDTO) throws Exception{
		ModelAndView mv= new ModelAndView();
		System.out.println("update my info post controller");
		int result = myService.setUpdate(myDTO);
		System.out.println(result);
		if(result>0) {
			mv.addObject("msg", "업데이트 성공");
			mv.addObject("path", "./myIndex");
		}else {
			mv.addObject("msg", "업데이트 실패");
			mv.addObject("path", "./updateMyInfo");
		}
		mv.setViewName("common/result");
		return mv;
	}
	
	
	@GetMapping("updateMyInfo")
	public ModelAndView getOne() throws Exception {
		ModelAndView mv = new ModelAndView();
		MyDTO info = myService.getOne();
		
		mv.addObject("myInfo", info);
		mv.setViewName("my/updateMyInfo");
		
		return mv;
	}
	
	@GetMapping("myIndex")
	public ModelAndView myIndex(MyDTO myDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		MyDTO star = myService.getMyIndex();
		
		if(star.getGrade()==2) {
			mv.addObject("grade", "Green level");
		}else if(star.getGrade()==3) {
			mv.addObject("grade", "Gold level");
		}else {
			mv.addObject("grade", "Welcome level");
		}
		mv.addObject("star", star);
		long num = 30 -star.getUseStar();
		mv.addObject("num", num);
		mv.setViewName("my/myIndex");
		
		return mv;
	}
	
	@GetMapping("myStarHistory")
	public void myStarHistory() throws Exception{
		
	}
	
	
}
