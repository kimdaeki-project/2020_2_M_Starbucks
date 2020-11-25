package com.starbucks.sw4.product.drink;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product/**")
public class DrinkController {
	
	@GetMapping("drinkList")
	public void getList() {
		
	}

}
