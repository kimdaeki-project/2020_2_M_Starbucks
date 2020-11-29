package com.starbucks.sw4.order;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.starbucks.sw4.member.MemberDTO;
import com.starbucks.sw4.menu.MenuDTO;
import com.starbucks.sw4.menu.MenuService;
import com.starbucks.sw4.menu.OptionDTO;

@Controller
@RequestMapping(value = "/order/**")
public class OrderController {

	@Autowired
	private OrderService orderService;
	@Autowired
	private MenuService menuService;
	
	@GetMapping("orderPage")
	public ModelAndView getOrderPage(OrderDTO oDTO, HttpSession session) throws SQLException, ClassNotFoundException{
		
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		
		System.out.println(oDTO.getOrderNum());
		oDTO = orderService.getOrderInfo(oDTO);
		
		// menu code를 통해 menu korName가져오기
		System.out.println(oDTO.getMenuCount());
		System.out.println(oDTO.getMenuCode());
		System.out.println(oDTO.getMenuCode().charAt(0));
		
		MenuDTO menuDTO = new MenuDTO();
		menuDTO.setMenuCode(oDTO.getMenuCode());
		
		String type = "";
		String unit = "개";
		
		OptionDTO optionDTO = new OptionDTO();
		
		if(oDTO.getMenuCode().charAt(0) == 'D') {			
			type = "음료";
			unit = "잔";

		} else if(oDTO.getMenuCode().charAt(0) == 'F') {
			
			type = "푸드";
			optionDTO.setOpt1("버터");
			optionDTO.setOpt2("소스");
			menuDTO.setOptionDTO(optionDTO);
			
		} else if(oDTO.getMenuCode().charAt(0) == 'P') {
			type = "상품";
		}
		menuDTO = menuService.getOne(menuDTO);
		
		mv.addObject("orderMenu", menuDTO);
		mv.addObject("orderInfo", oDTO);
		mv.addObject("orderType", type);
		mv.addObject("unit", unit);
		mv.setViewName("./order/orderPage");
		return mv;
		
	}
	
	@PostMapping("orderPage")
	public ModelAndView setOrderInsert(OrderDTO dto, HttpSession session) throws SQLException, ClassNotFoundException{

		System.out.println("order insert controller *********** ");
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		System.out.println(memberDTO.getNum());
		
		dto.setMemberNum(memberDTO.getNum());
		
		System.out.println(dto.getOptIndex());
		System.out.println(dto.getMenuCode());
		System.out.println(dto.getTotalPrice());
		System.out.println(dto.getHotYN());
		
		long result = orderService.setOrderInsert(dto);
		System.out.println(result);
		
		if (result > 0) {
			System.out.println("insert success");
		}
		
		mv.addObject("msg", result);
		mv.setViewName("common/ajaxResult");
		return mv;
		
	}
	
}
