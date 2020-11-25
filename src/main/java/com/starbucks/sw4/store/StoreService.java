package com.starbucks.sw4.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StoreService {

	@Autowired
	private StoreDAO storeDAO;
	
	public List<StoreDTO> getStoreList() throws Exception {
		return storeDAO.getStoreList();
	}
}
