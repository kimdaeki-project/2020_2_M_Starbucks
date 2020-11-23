package com.starbucks.sw4.admin.tables.work;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.HashMap;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestParam;

import com.starbucks.sw4.MyTestCase;
import com.starbucks.sw4.admin.tables.member.AdminMemberDTO;
import com.starbucks.sw4.member.memberAdmin.MemberAdminDTO;

public class WorkTimeTableDAOTest extends MyTestCase {
	
	@Autowired
	private WorkTimeTableDAO dao;
	
	// [JeongSky] insert test success, 20201124 02:55
	@Test
	public void setInsertTest() {
		
		try {

			HashMap<String, Object> tmpMap = new HashMap<String, Object>();
			
			AdminMemberDTO dto = new AdminMemberDTO();
			
			dto.setId("id2");
			dto.setNum(52);
			
			tmpMap.put("staff", dto);
			
			WorkTimeTableDTO wDTO = new WorkTimeTableDTO();
			
			wDTO.setSun("0900-1800");
			wDTO.setMon("0900-1800");
			wDTO.setTue("0900-1800");
			wDTO.setWed("0900-1800");
			wDTO.setThu("0900-1800");
			wDTO.setFri("");
			wDTO.setSat("0900-1800");

			tmpMap.put("work", wDTO);
			System.out.println(tmpMap);
			
			assertNotEquals(0, dao.setInsert(tmpMap));
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
