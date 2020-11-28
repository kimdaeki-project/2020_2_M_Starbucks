package com.starbucks.sw4.order;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {
	
	@Autowired
	private OrderDAO orderDAO;
	
	public OrderDTO getOrderInfo(OrderDTO orderDTO) throws ClassNotFoundException, SQLException{
		return orderDAO.getOrderInfo(orderDTO);
	}
	
	public long setOrderInsert(OrderDTO orderDTO) throws ClassNotFoundException, SQLException{
		System.out.println("access order insert service");
		if(orderDTO.getHotYN() == null) {
			orderDTO.setHotYN("");
		}
		return orderDAO.setOrderInsert(orderDTO);
	}

}
