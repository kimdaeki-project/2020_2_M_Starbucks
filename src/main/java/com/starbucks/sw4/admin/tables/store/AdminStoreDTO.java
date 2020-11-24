package com.starbucks.sw4.admin.tables.store;

import com.starbucks.sw4.store.StoreDTO;

public class AdminStoreDTO extends StoreDTO{

	private String search;

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}
	
}
