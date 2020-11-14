package com.starbucks.sw4.admin.tables.notice;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeService {

	@Autowired
	private NoticeDAO noticeDAO;
	
	public NoticeDTO getOne(NoticeDTO dto) throws ClassNotFoundException, SQLException{
		int hit = noticeDAO.setHitUpdate(dto);
		if(hit > 0) {
			System.out.println(dto.getNoticeNum()+" notice hit update success");
		} else {
			System.out.println("hit update fail");
		}
		return noticeDAO.getOne(dto);
	}
	
	public List<NoticeDTO> getList() throws ClassNotFoundException, SQLException {
		System.out.println("service access");
		return noticeDAO.getList();
	}
	
	public int setInsert(NoticeDTO dto) throws ClassNotFoundException, SQLException{
		return noticeDAO.setInsert(dto);
	}
	
}
