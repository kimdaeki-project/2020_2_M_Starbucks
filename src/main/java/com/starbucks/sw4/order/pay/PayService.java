package com.starbucks.sw4.order.pay;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PayService {

	@Autowired
	private PayDAO payDAO;
	
	public int setInsertPay(PayDTO payDTO) throws ClassNotFoundException, SQLException{
		return payDAO.setInsertPay(payDTO);
	}
	
}
