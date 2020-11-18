package com.starbucks.sw4.admin.tables.member;

import java.sql.Date;

public class AdminMemberDTO {

	private long rownum;
	private long num;
	private long adminNum;
	private int type;
	private String id;
	private String pw;
	private String name;
	private Date birth;
	private String gender;
	private String phone;
	private String email;
	private String nickName;
	private int grade;
	private String joinPath;
	private Date regDate;
	private long storeCode;
	private String storeName;
	
	public long getRownum() {
		return rownum;
	}
	public void setIndex(long rownum) {
		this.rownum = rownum;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public long getStoreCode() {
		return storeCode;
	}
	public void setStoreCode(long storeCode) {
		this.storeCode = storeCode;
	}
	public long getNum() {
		return num;
	}
	public void setNum(long num) {
		this.num = num;
	}
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
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
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getJoinPath() {
		return joinPath;
	}
	public void setJoinPath(String joinPath) {
		this.joinPath = joinPath;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
}
