package com.starbucks.sw4.order.pay;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.starbucks.sw4.member.MemberDTO;

@Controller
@RequestMapping(value = "/pay/**")
@ResponseBody
public class PayContoller {
	
	@Autowired
	private PayService payService;
	
	@GetMapping("payResult")
	public ModelAndView getResult() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("order/pay/payResult");
		return mv;
	}
	
	@PostMapping("payProcess")
	public ModelAndView setInsertPay(PayDTO payDTO, MemberDTO memberDTO) throws ClassNotFoundException, SQLException{
		
		System.out.println("pay controller access");
		ModelAndView mv = new ModelAndView();
		
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
		} else {
			System.out.println("insert fail");
		}
		
		mv.setViewName("redirect:../pay/payResult");
		return mv;
		
	}

}
