package com.starbucks.sw4.my;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/my/**")
public class MyController {
	
	@GetMapping("findMyInfo")
	public void findMyInfo() {
		
	}
	
	@GetMapping("myIndex")
	public void myIndex() {
		
	}
}
