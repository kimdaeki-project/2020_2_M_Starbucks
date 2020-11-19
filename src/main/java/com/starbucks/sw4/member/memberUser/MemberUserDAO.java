package com.starbucks.sw4.member.memberUser;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.starbucks.sw4.member.MemberDAO;
import com.starbucks.sw4.member.MemberDTO;

@Repository
public class MemberUserDAO implements MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.member.memberUser.MemberUserDAO.";
	
	
	@Override
	public MemberDTO getMemberLogin(MemberDTO memberDTO) throws Exception {
		System.out.println("DAO - MemberUserLogin");
		return null;
	}
	
}
