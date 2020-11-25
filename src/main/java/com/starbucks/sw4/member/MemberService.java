package com.starbucks.sw4.member;

public interface MemberService {
	
	//join
	public int setMemberJoin(MemberDTO memberDTO) throws Exception;
	
	//login
	public MemberDTO getMemberLogin(MemberDTO memberDTO) throws Exception;

	//idCheck
	public long getIdCheck(MemberDTO memberDTO) throws Exception;

	//emailCheck
	public long getMemberEmailCheck(MemberDTO memberDTO) throws Exception;
}
