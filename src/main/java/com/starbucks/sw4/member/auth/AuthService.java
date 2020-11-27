package com.starbucks.sw4.member.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthService {
	
	@Autowired
	private AuthDAO authDAO;
	
	public int setEmailAuthSend(AuthDTO authDTO) throws Exception {
		return authDAO.setEmailAuthSend(authDTO);
	}

	public int setEmailAuthStatus(AuthDTO authDTO) throws Exception {
		return authDAO.setEmailAuthStatus(authDTO);
	}
}
