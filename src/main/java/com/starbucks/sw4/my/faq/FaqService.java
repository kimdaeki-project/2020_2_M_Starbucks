package com.starbucks.sw4.my.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FaqService {
	@Autowired
	private FaqDAO faqDAO;
	
	public List<FaqDTO> getRewardList(Pager pager) throws Exception {
		System.out.println("service 까지 옴");
		long totalCount = faqDAO.faqCount();
		pager.setTotalCount(totalCount);
		return faqDAO.getRewardList(pager);
	}
	
	public List<FaqDTO> getCardList() {
		System.out.println("service card  까지 옴");
		
		return faqDAO.getCardList();
	}
}
