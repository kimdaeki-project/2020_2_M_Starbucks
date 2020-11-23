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
	
	private String sunStart;
	private String sunEnd;
	private String monStart;
	private String monEnd;
	private String tueStart;
	private String tueEnd;
	private String wedStart;
	private String wedEnd;
	private String thuStart;
	private String thuEnd;
	private String friStart;
	private String friEnd;
	private String satStart;
	private String satEnd;
	
	
	
	public String getSunStart() {
		return sunStart;
	}
	public void setSunStart(String sunStart) {
		this.sunStart = sunStart;
	}
	public String getSunEnd() {
		return sunEnd;
	}
	public void setSunEnd(String sunEnd) {
		this.sunEnd = sunEnd;
	}
	public String getMonStart() {
		return monStart;
	}
	public void setMonStart(String monStart) {
		this.monStart = monStart;
	}
	public String getMonEnd() {
		return monEnd;
	}
	public void setMonEnd(String monEnd) {
		this.monEnd = monEnd;
	}
	public String getTueStart() {
		return tueStart;
	}
	public void setTueStart(String tueStart) {
		this.tueStart = tueStart;
	}
	public String getTueEnd() {
		return tueEnd;
	}
	public void setTueEnd(String tueEnd) {
		this.tueEnd = tueEnd;
	}
	public String getWedStart() {
		return wedStart;
	}
	public void setWedStart(String wedStart) {
		this.wedStart = wedStart;
	}
	public String getWedEnd() {
		return wedEnd;
	}
	public void setWedEnd(String wedEnd) {
		this.wedEnd = wedEnd;
	}
	public String getThuStart() {
		return thuStart;
	}
	public void setThuStart(String thuStart) {
		this.thuStart = thuStart;
	}
	public String getThuEnd() {
		return thuEnd;
	}
	public void setThuEnd(String thuEnd) {
		this.thuEnd = thuEnd;
	}
	public String getFriStart() {
		return friStart;
	}
	public void setFriStart(String friStart) {
		this.friStart = friStart;
	}
	public String getFriEnd() {
		return friEnd;
	}
	public void setFriEnd(String friEnd) {
		this.friEnd = friEnd;
	}
	public String getSatStart() {
		return satStart;
	}
	public void setSatStart(String satStart) {
		this.satStart = satStart;
	}
	public String getSatEnd() {
		return satEnd;
	}
	public void setSatEnd(String satEnd) {
		this.satEnd = satEnd;
	}
	
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
