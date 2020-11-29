package com.starbucks.sw4.order.pay;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.starbucks.sw4.order.OrderDTO;

@Service
public class PayService {

	@Autowired
	private PayDAO payDAO;
	
	public PayDTO getPayInfo(OrderDTO orderDTO) throws ClassNotFoundException, SQLException{
		return payDAO.getPayInfo(orderDTO);
	}
	
	public int setInsertPay(PayDTO payDTO) throws ClassNotFoundException, SQLException{
		return payDAO.setInsertPay(payDTO);
	}
	
}
