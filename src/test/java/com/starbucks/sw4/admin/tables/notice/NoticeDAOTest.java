package com.starbucks.sw4.admin.tables.notice;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.starbucks.sw4.MyTestCase;
import com.starbucks.sw4.admin.util.Pager;


public class NoticeDAOTest extends MyTestCase {

	@Autowired
	private NoticeDAO noticeDAO;
	
	//@Test
	public void getOne() throws ClassNotFoundException, SQLException{
		
		NoticeDTO dto = new NoticeDTO();
		
		dto.setNoticeNum(3);
		
		dto = noticeDAO.getOne(dto);
		System.out.println(dto.getTitle());
		
		assertNotNull(dto);
		
	}

	//@Test
	public void getListTest() throws ClassNotFoundException, SQLException{
		Pager pager = new Pager();
		pager.makeRow();
		pager.setTotalCount(10);
		pager.makePage();
		assertNotNull(noticeDAO.getList(pager));
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
