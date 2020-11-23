package com.starbucks.sw4.member.auth;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.starbucks.sw4.member.MemberDTO;

@Repository
public class AuthDAO {
	
	@Autowired
	private SqlSession sqlSession;	
	private final String NAMESPACE = "com.starbucks.sw4.member.auth.AuthDAO.";
	
	public int setAuthEmailSend(AuthDTO authDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setAuthEmailSend", authDTO);
	}
	
	public long getMemberEmailCheck(AuthDTO authDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getMemberEmailCheck", authDTO);
	}
}
