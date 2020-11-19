package com.starbucks.sw4.member.auth;

public class AuthDTO {
	
	private long authNum;
	private String email;
	private int authKey;
	private String sendTime;
	private int authStatus;
	
	
	public long getAuthNum() {
		return authNum;
	}
	public void setAuthNum(long authNum) {
		this.authNum = authNum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAuthKey() {
		return authKey;
	}
	public void setAuthKey(int authKey) {
		this.authKey = authKey;
	}
	public String getSendTime() {
		return sendTime;
	}
	public void setSendTime(String sendTime) {
		this.sendTime = sendTime;
	}
	public int getAuthStatus() {
		return authStatus;
	}
	public void setAuthStatus(int authStatus) {
		this.authStatus = authStatus;
	}

}