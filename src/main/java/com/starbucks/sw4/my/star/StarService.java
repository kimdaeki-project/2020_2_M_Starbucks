package com.starbucks.sw4.my.star;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.starbucks.sw4.my.star.StarDTO;
import com.starbucks.sw4.order.OrderDTO;
@Service
public class StarService {
	@Autowired
	private StarDAO starDAO;
	
	//별 적립
	public int setStarCard(StarDTO starDTO) throws Exception{
		System.out.println("starService 진입");
		
		StarDTO store = starDAO.getStore(starDTO);
		starDTO.setStoreName(store.getStoreName()); 
		return starDAO.setStarCard(starDTO);
	}
}
