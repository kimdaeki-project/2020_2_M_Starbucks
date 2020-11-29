package com.starbucks.sw4.order;

import java.sql.SQLException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.starbucks.sw4.order.pay.PayDTO;
import com.starbucks.sw4.store.StoreDTO;

@Service
public class OrderService {
	
	@Autowired
	private OrderDAO orderDAO;
	
	public OrderDTO getOrderInfo(OrderDTO orderDTO) throws ClassNotFoundException, SQLException{
		System.out.println(orderDTO.getOrderNum());
		return orderDAO.getOrderInfo(orderDTO);
	}
	
	public int setOrderStoreUpdate(PayDTO payDTO, StoreDTO storeDTO) throws ClassNotFoundException, SQLException{
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pay", payDTO);
		map.put("store", storeDTO);
		return orderDAO.setOrderStoreUpdate(map);
	}
	
	public long setOrderInsert(OrderDTO orderDTO) throws ClassNotFoundException, SQLException{
		System.out.println("access order insert service");
		if(orderDTO.getHotYN() == null) {
			orderDTO.setHotYN("");
		}
		
		return orderDAO.setOrderInsert(orderDTO);
	}

}
