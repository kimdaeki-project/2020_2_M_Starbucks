package com.starbucks.sw4.order;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.starbucks.sw4.order.pay.PayDTO;

@Controller
@RequestMapping(value = "/order/**")
public class OrderController {

	@GetMapping("orderPage")
	public ModelAndView getPage() throws SQLException, ClassNotFoundException{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("order/orderPage");
		return mv;
		
	}
	
}
