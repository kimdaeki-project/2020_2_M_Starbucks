package com.starbucks.sw4.admin.tables.notice;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class NoticeDTO {

	private long noticeNum;
	private String title;
	private String writer;
	private String contents;
	private String regDate;
	private long hit;
	
	public long getNoticeNum() {
		return noticeNum;
	}
	public void setNoticeNum(long noticeNum) {
		this.noticeNum = noticeNum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		SimpleDateFormat format = new SimpleDateFormat("YYYY/MM/dd kk:mm");
		String regDateTmp = format.format(regDate);
		this.regDate = regDateTmp;
	}
	public long getHit() {
		return hit;
	}
	public void setHit(long hit) {
		this.hit = hit;
	}
	
}
