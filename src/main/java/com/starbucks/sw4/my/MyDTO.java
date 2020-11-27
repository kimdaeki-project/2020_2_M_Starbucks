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
	private String menuimage;
	
	//store
	private String storeName;
	private String addr;
	private String defaultfile;
	private String stosearch;
	
	private int r;
	
	//customerQna
	private String category;
	private int storecode;
	private String visitDate;
	private String title;
	private String contents;
	
	
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	
	public int getStorecode() {
		return storecode;
	}
	public void setStorecode(int storecode) {
		this.storecode = storecode;
	}
	public String getVisitDate() {
		return visitDate;
	}
	public void setVisitDate(String visitDate) {
		this.visitDate = visitDate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getR() {
		return r;
	}
	public void setR(int r) {
		this.r = r;
	}
	public String getStosearch() {
		return stosearch;
	}
	public void setStosearch(String stosearch) {
		this.stosearch = stosearch;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getDefaultfile() {
		return defaultfile;
	}
	public void setDefaultfile(String defaultfile) {
		this.defaultfile = defaultfile;
	}
	public String getKorName() {
		return korName;
	}
	public void setKorName(String korName) {
		this.korName = korName;
	}
	
	public String getMenuimage() {
		return menuimage;
	}
	public void setMenuimage(String menuimage) {
		this.menuimage = menuimage;
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
