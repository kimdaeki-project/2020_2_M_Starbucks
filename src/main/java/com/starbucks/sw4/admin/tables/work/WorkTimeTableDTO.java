package com.starbucks.sw4.admin.tables.work;

import java.sql.Date;

public class WorkTimeTableDTO {

	/*
	timeTableCode     VARCHAR2(200), 
    writeDate         DATE      NOT NULL, 
    storeManagerId    VARCHAR2(200), 
    staffID           number    constraint WT_SID_FK references member(num), 
    sun            VARCHAR2(400), 
    mon            VARCHAR2(400), 
    tue           VARCHAR2(400), 
    wed        VARCHAR2(400), 
    thu          VARCHAR2(400), 
    fri            VARCHAR2(400), 
    sat          VARCHAR2(400), 
    CONSTRAINT WORKTIMETABLE_PK PRIMARY KEY (timeTableCode)
	 */
	
	private String timeTableCode;
	private Date writeDate;
	private String storeManagerId;
	private long staffId;
	private String sun;
	private String mon;
	private String tue;
	private String wed;
	private String thu;
	private String fri;
	private String sat;
	
	public String getTimeTableCode() {
		return timeTableCode;
	}
	public void setTimeTableCode(String timeTableCode) {
		this.timeTableCode = timeTableCode;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public String getStoreManagerId() {
		return storeManagerId;
	}
	public void setStoreManagerId(String storeManagerId) {
		this.storeManagerId = storeManagerId;
	}
	public long getStaffId() {
		return staffId;
	}
	public void setStaffId(long staffId) {
		this.staffId = staffId;
	}
	public String getSun() {
		return sun;
	}
	public void setSun(String sun) {
		this.sun = sun;
	}
	public String getMon() {
		return mon;
	}
	public void setMon(String mon) {
		this.mon = mon;
	}
	public String getTue() {
		return tue;
	}
	public void setTue(String tue) {
		this.tue = tue;
	}
	public String getWed() {
		return wed;
	}
	public void setWed(String wed) {
		this.wed = wed;
	}
	public String getThu() {
		return thu;
	}
	public void setThu(String thu) {
		this.thu = thu;
	}
	public String getFri() {
		return fri;
	}
	public void setFri(String fri) {
		this.fri = fri;
	}
	public String getSat() {
		return sat;
	}
	public void setSat(String sat) {
		this.sat = sat;
	}
	
}
