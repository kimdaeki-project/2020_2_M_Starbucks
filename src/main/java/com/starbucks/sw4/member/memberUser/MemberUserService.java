package com.starbucks.sw4.member.memberUser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.starbucks.sw4.member.MemberDTO;
import com.starbucks.sw4.member.MemberService;

@Service
public class MemberUserService implements MemberService {

<<<<<<< HEAD
	
=======
//	@Autowired
//	private MemberUserDAO memberUserDAO;
>>>>>>> main
	
	@Override
	public MemberDTO getMemberLogin(MemberDTO memberDTO) throws Exception {
		System.out.println("Service -- MemberUserLogin");
		return null;
	}
}
