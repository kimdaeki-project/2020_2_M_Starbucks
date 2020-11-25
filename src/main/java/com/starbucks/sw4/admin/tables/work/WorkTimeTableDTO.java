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
	
	public void timeParsing() {
		
		if(sun != null) {
			this.sunStart = this.sun.substring(0, 4);
			this.sunEnd = this.sun.substring(5);		
		} else {
			this.sunStart = "";
			this.sunEnd = "";
		}

		if(mon != null) {
			this.monStart = this.mon.substring(0, 4);
			this.monEnd = this.mon.substring(5);			
		} else {
			this.monStart = "";
			this.monEnd = "";
		}

		if(tue != null) {
			this.tueStart = this.tue.substring(0, 4);
			this.tueEnd = this.tue.substring(5);
		} else {
			this.tueStart = "";
			this.tueEnd = "";
		}
		
		if(wed != null) {
			this.wedStart = this.wed.substring(0, 4);
			this.wedEnd = this.wed.substring(5);
		} else {
			this.wedStart = "";
			this.wedEnd = "";
		}
		
		if(thu != null) {
			this.thuStart = this.thu.substring(0, 4);
			this.thuEnd = this.thu.substring(5);
		} else {
			this.thuStart = "";
			this.thuEnd = "";
		}
		
		if(fri != null) {
			this.friStart = this.fri.substring(0, 4);
			this.friEnd = this.fri.substring(5);
		} else {
			this.friStart = "";
			this.friEnd = "";
		}
		
		if(sat != null) {
			this.satStart = this.sat.substring(0, 4);
			this.satEnd = this.sat.substring(5);
		} else {
			this.satStart = "";
			this.satEnd = "";
		}
		
	}
	
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
		if(sun.equals("-")) {
			sun = "";
		}
		this.sun = sun;
	}
	public String getMon() {
		return mon;
	}
	public void setMon(String mon) {
		if(mon.equals("-")) {
			mon = "";
		}
		this.mon = mon;
	}
	public String getTue() {
		return tue;
	}
	public void setTue(String tue) {
		if(tue.equals("-")) {
			tue = "";
		}
		this.tue = tue;
	}
	public String getWed() {
		return wed;
	}
	public void setWed(String wed) {
		if(wed.equals("-")) {
			wed = "";
		}
		this.wed = wed;
	}
	public String getThu() {
		return thu;
	}
	public void setThu(String thu) {
		if(thu.equals("-")) {
			thu = "";
		}
		this.thu = thu;
	}
	public String getFri() {
		return fri;
	}
	public void setFri(String fri) {
		if(fri.equals("-")) {
			fri = "";
		}
		this.fri = fri;
	}
	public String getSat() {
		return sat;
	}
	public void setSat(String sat) {
		if(sat.equals("-")) {
			sat = "";
		}
		this.sat = sat;
	}
	
}
