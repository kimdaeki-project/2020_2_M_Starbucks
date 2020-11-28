package com.starbucks.sw4.member.memberUser;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.sql.Date;
import java.text.SimpleDateFormat;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.starbucks.sw4.MyTestCase;
import com.starbucks.sw4.member.MemberDTO;

public class MemberUserDAOTest extends MyTestCase {

	@Autowired
	private MemberUserDAO memberUserDAO;
	
	//@Test
	public void getMemberLoginTest() throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("admin");
		MemberDTO dto = memberUserDAO.getMemberLogin(memberDTO);
		
		assertNotNull(dto.getName());
	}

	//@Test
	public void getIdCheckTest() throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("customer02");
		long result = memberUserDAO.getMemberIdCheck(memberDTO);
		
		assertEquals(result, 1);
	}
	
	//@Test
	public void setMemberJoinTest() throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		
		memberDTO.setType(1);
		memberDTO.setId("id2");
		memberDTO.setPw("pw2");
		memberDTO.setName("name2");
		memberDTO.setBirth("2020-01-01");
		memberDTO.setGender("남");
		memberDTO.setPhone("010-1010-1010");
		memberDTO.setEmail("0ewro2@ejwo.djoq");
		memberDTO.setNickName("nickName2");
		memberDTO.setGrade(1);
		memberDTO.setJoinPath("");
		
		
		int result = memberUserDAO.setMemberJoin(memberDTO);
		
		assertEquals(result, 1);
	}
	
	//@Test
	public void getMemberEmailCheck() throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setEmail("tbehd8967@naver.com");
		long result = memberUserDAO.getMemberEmailCheck(memberDTO);
		
		assertEquals(result, 0);
	}
}
