package com.starbucks.sw4.admin.admin;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.starbucks.sw4.MyTestCase;
import com.starbucks.sw4.admin.tables.member.AdminMemberDAO;
import com.starbucks.sw4.admin.tables.member.AdminMemberDTO;

public class AdminMemberDAOTest extends MyTestCase{

	@Autowired
	private AdminMemberDAO adminMemberDAO;
	
	// [JeongSky] get One test success 2020.11.23 22:18
	//@Test
	public void getOneTest() {

		try {	
			
			AdminMemberDTO dto = new AdminMemberDTO();
			dto.setNum(52);
			dto = adminMemberDAO.getOne(dto);
			
			System.out.println(dto.getId());
			System.out.println(dto.getName());
			System.out.println(dto.getTimeTable());
			System.out.println(dto.getStoreDTO().getStoreName());
			
			assertNotNull(dto);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
