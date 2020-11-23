package com.starbucks.sw4.my;

import java.sql.Date;

import com.starbucks.sw4.member.MemberDTO;

public class MyDTO extends MemberDTO{
//	//member
//	private String id;
//	private String pw;
//	private String name;
//	private Date birth;
//	private String phone;
//	private String email;
//	private String nickname;
//	private int grade;
	
	//card, star
	private long useStar;
	private long outStar;
	private long totalStar;
	private long balance;
	private String korName;
	private long cardNum;
	private String state;
	private Date saveDate;
	private Date validDate;
	
	//images
	private String fileName;
	
	//store
	private String storeName;


	
	public String getKorName() {
		return korName;
	}
	public void setKorName(String korName) {
		this.korName = korName;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public long getBalance() {
		return balance;
	}
	public void setBalance(long balance) {
		this.balance = balance;
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
	public long getCardNum() {
		return cardNum;
	}
	public void setCardNum(long cardNum) {
		this.cardNum = cardNum;
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
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	
	
}
