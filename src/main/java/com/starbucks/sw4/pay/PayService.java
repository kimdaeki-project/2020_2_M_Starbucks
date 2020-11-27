package com.starbucks.sw4.pay;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PayService {

	@Autowired
	private PayDAO payDAO;
	
	public int setPay() throws ClassNotFoundException, SQLException{
		return 0;
	}
	
}
