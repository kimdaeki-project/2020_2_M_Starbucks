package com.starbucks.sw4.admin.tables.store;

import com.starbucks.sw4.store.StoreDTO;
import com.starbucks.sw4.store.storeFile.StoreFileDTO;


public class AdminStoreDTO extends StoreDTO{

	private String search;
	
	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}
	
}
