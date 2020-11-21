package com.starbucks.sw4.my;

import java.sql.Date;

public class MyDTO {
	//member
	private String id;
	private String pw;
	private String name;
	private Date birth;
	private String phone;
	private String email;
	private String nickname;
	private int grade;
	
	//card, star
	private long useStar;
	private long outStar;
	private long totalStar;
	private long balance;
	private String cardName;
	private long cardNum;
	private String state;
	private Date saveDate;
	private Date validDate;
	
	//images
	private String fileName;
	
	//store
	private String storeName;


	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public long getUseStar() {
		return useStar;
	}
	public void setUseStar(long useStar) {
		this.useStar = useStar;
	}
	
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getNickname() {
		if(nickname == null) {
			nickname = this.id;
		}
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
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
