package com.starbucks.sw4.admin.admin;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.starbucks.sw4.MyTestCase;
import com.starbucks.sw4.admin.tables.member.AdminMemberDTO;

public class AdminDAOTest extends MyTestCase {

	@Autowired
	private AdminDAO dao;
	
	@Test
	public void setAdminLogin() {
		
		AdminMemberDTO dto = new AdminMemberDTO();
		dto.setId("admin");
		dto.setPw("admin");
		
		try {
			
			dto = dao.getAdminLogin(dto);
			System.out.println(dto.getName());
			System.out.println(dto.getId());
			System.out.println(dto.getPw());
			assertNotNull(dto);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
