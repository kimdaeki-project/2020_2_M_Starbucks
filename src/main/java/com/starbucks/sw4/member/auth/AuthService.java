package com.starbucks.sw4.member.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthService {
	
	@Autowired
	private AuthDAO authDAO;
	
	public int setAuthEmailSend(AuthDTO authDTO) throws Exception {
		return authDAO.setAuthEmailSend(authDTO);
	}
	
	public long getMemberEmailCheck(AuthDTO authDTO) throws Exception {
		return authDAO.getMemberEmailCheck(authDTO);
	}
}
