package com.starbucks.sw4.member.memberAdmin;

public class MemberAdminDTO {
	
	private long adminNum;
	private int type;
	private long storeCode;
	private String managerId;
	
	
	public long getAdminNum() {
		return adminNum;
	}
	public void setAdminNum(long adminNum) {
		this.adminNum = adminNum;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public long getStoreCode() {
		return storeCode;
	}
	public void setStoreCode(long storeCode) {
		this.storeCode = storeCode;
	}
	public String getManagerId() {
		return managerId;
	}
	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}
	
}