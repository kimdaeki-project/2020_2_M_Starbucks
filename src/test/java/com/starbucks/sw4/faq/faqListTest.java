package com.starbucks.sw4.faq;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.starbucks.sw4.MyTestCase;
import com.starbucks.sw4.my.faq.FaqDAO;
import com.starbucks.sw4.my.faq.Pager;

public class faqListTest extends MyTestCase {

	@Autowired
	private FaqDAO faqDAO;

	@Test
	public void getRewardListTest() {
		
		Pager pager = new Pager();

		try {
			pager.setCurPage(1);
			pager.makeRow();
			//long totalCount = faqDAO.faqCount(pager);
			//System.out.println("total count : " + totalCount);
			pager.setTotalCount(faqDAO.faqCount(pager)); //15
			pager.makePage();
			
			assertNotNull(faqDAO.getRewardList(pager));
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
