package com.starbucks.sw4.admin.tables.notice;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class NoticeDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.admin.tables.notice.NoticeDAO.";
	
	public List<NoticeDTO> getList() throws ClassNotFoundException, SQLException{
		System.out.println("dao access");
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	public int setInsert(NoticeDTO dto) throws ClassNotFoundException, SQLException {
		return sqlSession.insert(NAMESPACE+"setInsert", dto);
	}

	public int setUpdate() throws ClassNotFoundException, SQLException {
		return 0;
	}

	public int setDelete() throws ClassNotFoundException, SQLException {
		return 0;
	}

}
