package com.starbucks.sw4.myPage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FaqService {
	@Autowired
	private FaqDAO faqDAO;
	
	public List<FaqDTO> getRewardList() {
		System.out.println("service 까지 옴");
		return faqDAO.getRewardList();
	}
	
	public List<FaqDTO> getCardList() {
		System.out.println("service card  까지 옴");
		return faqDAO.getCardList();
	}
}
