package com.starbucks.sw4.admin.tables.member;

import com.starbucks.sw4.member.MemberDTO;
import com.starbucks.sw4.store.StoreDTO;

public class AdminMemberDTO extends MemberDTO{

	private long r;
	private long staffCount;
	
	private StoreDTO storeDTO;

	public long getStaffCount() {
		return staffCount;
	}
	public void setStaffCount(long staffCount) {
		this.staffCount = staffCount;
	}
	
	public StoreDTO getStoreDTO() {
		return storeDTO;
	}
	public void setStoreDTO(StoreDTO storeDTO) {
		this.storeDTO = storeDTO;
	}
	
	public long getR() {
		return r;
	}
	public void setR(long r) {
		this.r = r;
	}

}
