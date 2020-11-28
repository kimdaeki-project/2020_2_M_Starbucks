package com.starbucks.sw4.member.memberUser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.starbucks.sw4.member.MemberDTO;
import com.starbucks.sw4.member.MemberService;

@Service
public class MemberUserService implements MemberService {

	@Autowired
	private MemberUserDAO memberUserDAO;

	//join
	@Override
	public int setMemberJoin(MemberDTO memberDTO) throws Exception {
		return memberUserDAO.setMemberJoin(memberDTO);
	}
	
	//login
	@Override
	public MemberDTO getMemberLogin(MemberDTO memberDTO) throws Exception {
		return memberUserDAO.getMemberLogin(memberDTO);
	}

	//idCheck
	@Override
	public long getIdCheck(MemberDTO memberDTO) throws Exception {
		return memberUserDAO.getIdCheck(memberDTO);
	}
	
	//emailCheck
	@Override
	public long getMemberEmailCheck(MemberDTO memberDTO) throws Exception {
		return memberUserDAO.getMemberEmailCheck(memberDTO);
	}
}
