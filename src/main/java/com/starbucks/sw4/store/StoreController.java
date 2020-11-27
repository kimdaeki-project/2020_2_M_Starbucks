package com.starbucks.sw4.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.sf.json.JSONArray;

@Controller
@RequestMapping(value="/store/**")
public class StoreController {
	
	@Autowired
	private StoreService storeService;
	
	@GetMapping("storeMap")
	public ModelAndView getStoreMap() throws Exception {
		System.out.println("getStoreMap() ---- Controller ");
		ModelAndView mv = new ModelAndView();
		List<StoreDTO> storeList = storeService.getStoreList();
		System.out.println(storeList);
		
		mv.addObject("storeList", storeList);
		mv.setViewName("store/storeMap");
		return mv;
	}
	
	@GetMapping("storeList")
	@ResponseBody
	public List<StoreDTO> getStoreList() throws Exception {
		System.out.println("getStoreList() ---- Controller ");
		List<StoreDTO> storeList = storeService.getStoreList();
		
		return storeList;
	}
}
