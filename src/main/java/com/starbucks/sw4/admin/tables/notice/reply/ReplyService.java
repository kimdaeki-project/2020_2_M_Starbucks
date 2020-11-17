package com.starbucks.sw4.admin.tables.notice.reply;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReplyService {

	@Autowired
	private ReplyDAO replyDAO;
	
	public int setWrite(ReplyDTO dto) throws SQLException,ClassNotFoundException{
		return replyDAO.setWrite(dto);
	}
	
	public List<ReplyDTO> getList(ReplyDTO dto) throws SQLException, ClassNotFoundException{
		return replyDAO.getList(dto);
	}
	
}
