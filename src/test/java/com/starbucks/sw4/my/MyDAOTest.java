package com.starbucks.sw4.my;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.starbucks.sw4.MyTestCase;

public class MyDAOTest extends MyTestCase {
	@Autowired
	private MyDAO myDAO;
	
	@Test
	public void getMyStoreTest() throws Exception {
		MyDTO myDTO = new MyDTO();
		
	}
	
	@Test
	public void setUpdateTest() throws Exception {
		MyDTO myDTO = new MyDTO();
		myDTO.setId("id1");
		myDTO.setName("gest1");
		myDTO.setNickName("nick sibbal");
		myDTO.setKorName("ggg");
		int result = myDAO.setUpdate(myDTO);
		assertEquals(1, result);
	}
	
}
