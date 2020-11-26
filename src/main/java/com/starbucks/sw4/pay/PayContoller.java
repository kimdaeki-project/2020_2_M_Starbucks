package com.starbucks.sw4.pay;

import java.security.PublicKey;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/order/**")
public class PayContoller {

	@GetMapping("payment/pay")
	public ModelAndView getPay() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("order/payment/pay");
		return mv;
	}
	
}
