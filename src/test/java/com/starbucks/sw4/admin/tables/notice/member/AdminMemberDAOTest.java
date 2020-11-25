package com.starbucks.sw4.admin.tables.notice.member;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.starbucks.sw4.MyTestCase;
import com.starbucks.sw4.admin.tables.member.AdminMemberDAO;
import com.starbucks.sw4.admin.tables.member.AdminMemberDTO;
import com.starbucks.sw4.admin.tables.store.AdminStoreDAO;
import com.starbucks.sw4.admin.tables.store.AdminStoreService;
import com.starbucks.sw4.admin.util.Pager;

public class AdminMemberDAOTest extends MyTestCase{

	@Autowired
	private AdminMemberDAO dao;
	@Autowired
	private AdminStoreDAO sDAO;
	
	//@Test
	public void getAdminStoreEachCountTest() {
		
		try {
			
			List<AdminMemberDTO> list = sDAO.getAdminStoreEachCount();
			System.out.println();
			
//			HashMap<String,String> list = (HashMap<String,String>)dao.getAdminStoreEachCount();
//			
//			System.out.println(list.size());
//			
//			System.out.println(list.containsKey(316));
//			System.out.println(list.containsKey((long)316));
//			System.out.println(list.containsKey(Long.parseLong("316")));
//			System.out.println(list.entrySet().contains(316));
//			
//			Long key = (long)316;
//			System.out.println(list.get(key));
//			
//			Iterator<String> iterator = list.keySet().iterator();
//			String tmp;
//			while(iterator.hasNext()) {
//				tmp = iterator.next();
//				System.out.println(tmp);
//				System.out.println( list.get(iterator.next()) );
//			}
//			
//			for(Map.Entry<String,String> entry: list.entrySet()) {
//				System.out.println("[key]:" + entry.getKey() + ", [value]:" + entry.getValue());
//			}
			
			assertEquals(14, list.size());
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
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
