package com.starbucks.sw4.my;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyService {
	@Autowired
	private MyDAO myDAO;
	
	public MyDTO getStarCount() throws Exception{
		return myDAO.getStarCount();
	}
}
