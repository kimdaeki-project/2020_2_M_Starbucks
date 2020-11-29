package com.starbucks.sw4.order.pay;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.starbucks.sw4.member.MemberDTO;
import com.starbucks.sw4.my.MyService;
import com.starbucks.sw4.order.OrderDTO;
import com.starbucks.sw4.order.OrderService;
import com.starbucks.sw4.store.StoreDTO;
import com.starbucks.sw4.store.StoreService;

@Controller
@RequestMapping(value = "/pay/**")
@ResponseBody
public class PayContoller {
	
	@Autowired
	private PayService payService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private StoreService storeService;
	@Autowired
	private MyService myService;
	
	@GetMapping("payResult")
	public ModelAndView getResult(OrderDTO oDTO) throws ClassNotFoundException, SQLException{
		
		ModelAndView mv = new ModelAndView();

		System.out.println(oDTO.getOrderNum());
		OrderDTO orderDTO = orderService.getOrderInfo(oDTO);
		PayDTO payDTO = payService.getPayInfo(orderDTO);
		
		System.out.println(orderDTO.getStoreCode());
		
		StoreDTO storeDTO = new StoreDTO();
		storeDTO.setStoreCode(orderDTO.getStoreCode());
		storeDTO = storeService.getStoreOne(storeDTO);
		
		System.out.println(storeDTO.getStoreName());
		
		mv.addObject("payInfo", payDTO);
		mv.addObject("storeInfo", storeDTO);
		mv.addObject("orderInfo", orderDTO);
		mv.setViewName("order/pay/payResult");
		return mv;
		
	}
	
	@PostMapping("payProcess")
	public ModelAndView setInsertPay(PayDTO payDTO, MemberDTO memberDTO, StoreDTO storeDTO, HttpSession session) throws Exception{
		
		System.out.println("pay controller access");
		ModelAndView mv = new ModelAndView();
		
		System.out.println(payDTO.getOrderNum());
		System.out.println(payDTO.getMerchant_uid());
		System.out.println(memberDTO.getNum());
		System.out.println(payDTO.getBuyer_tel());
		System.out.println(payDTO.getPg());
		System.out.println(payDTO.getPay_amount());
		System.out.println(payDTO.getAmount());
		System.out.println(payDTO.getPay_method());
		
		int result = payService.setInsertPay(payDTO);
		
		if(result > 0) {
			System.out.println("insert success");
			int updateResult = orderService.setOrderStoreUpdate(payDTO, storeDTO);
			if(updateResult > 0) {
				System.out.println("update success");
			}
		//	myService.setMemberCard(payDTO, session);
			myService.setStarCard(payDTO, session);
		} else {
			System.out.println("insert fail");
		}
		
		mv.addObject("msg", result);
		mv.setViewName("common/ajaxResult");
		return mv;
		
	}

}
