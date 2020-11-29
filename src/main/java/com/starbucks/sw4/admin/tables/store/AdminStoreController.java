package com.starbucks.sw4.admin.tables.store;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.starbucks.sw4.store.StoreDTO;

@Controller
@RequestMapping(value = "/admin/store/**")
public class AdminStoreController {
	
	@Autowired
	private AdminStoreService adminStoreService;
	
	@GetMapping("order")
	public ModelAndView getOrderPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/order/storeOrder");
		return mv;
	}

	@GetMapping("storeList")
	public ModelAndView getList(AdminStoreDTO dto, StoreDTO sDTO) throws ClassNotFoundException, SQLException{
		
		System.out.println("store list access");
		System.out.println(dto.getSidoName());
		
		ModelAndView mv = new ModelAndView();
		List<StoreDTO> list = adminStoreService.getList(dto);

		mv.addObject("storeList", list);
		mv.setViewName("admin/member/store/storeDialog");
		return mv;
		
	}
	
}
