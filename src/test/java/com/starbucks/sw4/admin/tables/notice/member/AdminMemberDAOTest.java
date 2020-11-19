package com.starbucks.sw4.admin.tables.notice.member;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.starbucks.sw4.MyTestCase;
import com.starbucks.sw4.admin.tables.member.AdminMemberDAO;
import com.starbucks.sw4.admin.tables.member.AdminMemberDTO;
import com.starbucks.sw4.admin.util.Pager;

public class AdminMemberDAOTest extends MyTestCase{

	@Autowired
	private AdminMemberDAO dao;
	
	// [JeongSky] 2020.11.18 18:50 get count test success
	//@Test
	public void getCountTest() {
		
		Pager pager = new Pager();
		pager.setStoreCode(1716);
		
		try {
			assertNotEquals(0, dao.getCount(pager));
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	// [JeongSky] 2020.11.18 18:02 get list test success
	//@Test
	public void getListTest() {
		
		Pager pager = new Pager();
		pager.setStoreCode(1716);
		
		try {
			assertNotNull(dao.getList(pager));
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
