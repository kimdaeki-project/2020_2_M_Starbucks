package com.starbucks.sw4.member.auth;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.starbucks.sw4.MyTestCase;

public class authDAOTest extends MyTestCase {

	@Autowired
	private AuthDAO authDAO;
	
	
	//@Test
	public void setAuthEmailSendTest() throws Exception {
		AuthDTO authDTO = new AuthDTO();
		authDTO.setAuthKey(153446);
		authDTO.setAuthStatus(0);
		authDTO.setEmail("testest@gmail.com");
		authDTO.setSendTime("2020-11-23 04:41:46");
		
		int result = authDAO.setEmailAuthSend(authDTO);
		
		assertEquals(1, result);
	}
	
	@Test
	public void setEmailAuthStatus() throws Exception {
		AuthDTO authDTO = new AuthDTO();
		authDTO.setAuthStatus(1);
		authDTO.setAuthKey(756031);
		authDTO.setEmail("tbehd8967@naver.com");
		
		int result = authDAO.setEmailAuthStatus(authDTO);
		System.out.println(result);
		assertEquals(1, result);
	}

}
