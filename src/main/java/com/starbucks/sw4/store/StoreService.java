package com.starbucks.sw4.store;

import java.sql.SQLException;
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
	
	// 성민님께 전달드리기
	public StoreDTO getStoreOne(StoreDTO storeDTO) throws ClassNotFoundException, SQLException{
		System.out.println(storeDTO.getStoreCode());
		return storeDAO.getStoreOne(storeDTO);
	}
}
