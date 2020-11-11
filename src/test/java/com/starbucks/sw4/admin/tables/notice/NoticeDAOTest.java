package com.starbucks.sw4.admin.tables.notice;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.starbucks.sw4.MyTestCase;


public class NoticeDAOTest extends MyTestCase {

	@Autowired
	private NoticeDAO noticeDAO;
	
	// @Test
	public void getListTest() throws ClassNotFoundException, SQLException{
		assertNotNull(noticeDAO.getList());
	}
	
	// @Test
	public void setInsetTest() throws ClassNotFoundException, SQLException {
		
		NoticeDTO dto = new NoticeDTO();
		
		dto.setTitle("insert title test10");
		dto.setWriter("witer10");
		dto.setContents("contents test10");
		
		int result = noticeDAO.setInsert(dto);
		
		assertNotEquals(0, result);
		
	}
	
}
