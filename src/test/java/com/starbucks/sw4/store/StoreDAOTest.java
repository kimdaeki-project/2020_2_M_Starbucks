package com.starbucks.sw4.store;

import static org.junit.Assert.assertNotNull;

import java.util.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.starbucks.sw4.MyTestCase;

public class StoreDAOTest extends MyTestCase {
	
	@Autowired
	private StoreDAO storeDAO;
	
	@Test
	public void getStoreListTest() throws Exception {
		List<StoreDTO> s_list = storeDAO.getStoreList();
		
		assertNotNull(s_list);
	}

}
