package com.starbucks.sw4.admin.tables.member;

import com.starbucks.sw4.admin.tables.work.WorkTimeTableDTO;
import com.starbucks.sw4.member.MemberDTO;
import com.starbucks.sw4.member.memberAdmin.MemberAdminDTO;
import com.starbucks.sw4.store.StoreDTO;

public class AdminMemberDTO extends MemberDTO{

	private long r;
	private long staffCount;
	private String timeTable;
	
	private StoreDTO storeDTO;
	private WorkTimeTableDTO workTimeTableDTO;
	
	private MemberAdminDTO memberAdminDTO;

	public MemberAdminDTO getMemberAdminDTO() {
		return memberAdminDTO;
	}
	public void setMemberAdminDTO(MemberAdminDTO memberAdminDTO) {
		this.memberAdminDTO = memberAdminDTO;
	}
	public WorkTimeTableDTO getWorkTimeTableDTO() {
		return workTimeTableDTO;
	}
	public void setWorkTimeTableDTO(WorkTimeTableDTO workTimeTableDTO) {
		this.workTimeTableDTO = workTimeTableDTO;
	}
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

	public String getTimeTable() {
		return timeTable;
	}
	public void setTimeTable(String timeTable) {
		this.timeTable = timeTable;
	}
	
	public long getR() {
		return r;
	}
	public void setR(long r) {
		this.r = r;
	}

}
