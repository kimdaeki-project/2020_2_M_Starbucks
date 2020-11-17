package com.starbucks.sw4.admin.tables.notice.reply;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class ReplyDTO {

	private long replyNum;
	private long noticeNum;
	private String writer;
	private String contents;
	private String regDate;
	
	public long getReplyNum() {
		return replyNum;
	}
	public void setReplyNum(long replyNum) {
		this.replyNum = replyNum;
	}
	public long getNoticeNum() {
		return noticeNum;
	}
	public void setNoticeNum(long noticeNum) {
		this.noticeNum = noticeNum;
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
	
}
