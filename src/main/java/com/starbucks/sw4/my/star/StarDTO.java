package com.starbucks.sw4.my.star;

import java.sql.Date;

import com.starbucks.sw4.order.OrderDTO;

public class StarDTO extends OrderDTO {
	private long useStar;
	private long outStar;
	private long totalStar;
	private String state;
	private Date saveDate;
	private Date validDate;
	
	private String storeName;
	
	
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public long getUseStar() {
		return useStar;
	}
	public void setUseStar(long useStar) {
		this.useStar = useStar;
	}
	public long getOutStar() {
		return outStar;
	}
	public void setOutStar(long outStar) {
		this.outStar = outStar;
	}
	public long getTotalStar() {
		return totalStar;
	}
	public void setTotalStar(long totalStar) {
		this.totalStar = totalStar;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Date getSaveDate() {
		return saveDate;
	}
	public void setSaveDate(Date saveDate) {
		this.saveDate = saveDate;
	}
	public Date getValidDate() {
		return validDate;
	}
	public void setValidDate(Date validDate) {
		this.validDate = validDate;
	}
	
	
	
}
