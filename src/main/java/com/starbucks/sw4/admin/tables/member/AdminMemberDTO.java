package com.starbucks.sw4.admin.tables.member;

import com.starbucks.sw4.member.MemberDTO;

public class AdminMemberDTO extends MemberDTO{

	private long r;
	private long storeCode;
	private String storeName;
	
	public long getR() {
		return r;
	}
	public void setR(long r) {
		this.r = r;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public long getStoreCode() {
		return storeCode;
	}
	public void setStoreCode(long storeCode) {
		this.storeCode = storeCode;
	}
	
}
