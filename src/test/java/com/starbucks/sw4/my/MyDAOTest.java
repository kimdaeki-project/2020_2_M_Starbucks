package com.starbucks.sw4.my;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.starbucks.sw4.MyTestCase;
import com.starbucks.sw4.member.MemberDTO;

public class MyDAOTest extends MyTestCase {
	@Autowired
	private MyDAO myDAO;
	
	@Test
	public void setVocListTest() throws Exception {
		MyDTO myDTO = new MyDTO();
		myDTO.setCategory("문의");
		myDTO.setId("customer02");
		myDTO.setStoreName("아차산");
		myDTO.setTitle("TEST");
		myDTO.setContents("dadfdsafd");
		myDTO.setVisitDate("20/02/23");
		int result = myDAO.setVocList(myDTO);
		assertEquals(1, result);
	}
	
//	@Test
	public void setUpdateTest() throws Exception {
		MyDTO myDTO = new MyDTO();
		myDTO.setId("id1");
		myDTO.setName("gest1");
		myDTO.setNickName("nick");
		myDTO.setKorName("ggg");
		int result = myDAO.setUpdate(myDTO);
		assertEquals(1, result);
	}
	
	//@Test
	public void setMemberJoinCardTest() throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("customer06");
		
		int result = myDAO.setMemberJoinCard(memberDTO);
		assertEquals(1,result);
	}
	
	@Test
	public void setMemberJoinStarTest() throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("customer06");
		
		int result = myDAO.setMemberJoinStar(memberDTO);
		assertEquals(1,result);
	}
}
