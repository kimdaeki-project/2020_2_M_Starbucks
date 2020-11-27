package com.starbucks.sw4.pay;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/pay/**")
public class PayContoller {

	@PostMapping("payProcess")
	public ModelAndView setPay() throws ClassNotFoundException, SQLException{
		
		ModelAndView mv = new ModelAndView();
		
		
		mv.setViewName("order/payment/pay");
		return mv;
		
	}
	
}
