package com.starbucks.sw4.store;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/store/**")
public class StoreController {
	
	@GetMapping("storeMap")
	public ModelAndView getStoreMap() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("store/storeMap");
		return mv;
	}
}
