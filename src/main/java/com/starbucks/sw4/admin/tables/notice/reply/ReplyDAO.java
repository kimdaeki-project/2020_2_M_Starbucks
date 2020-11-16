package com.starbucks.sw4.admin.tables.notice.reply;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ReplyDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.admin.tables.notice.reply.ReplyDAO.";
	
	public int setWrite(ReplyDTO dto) throws SQLException,ClassNotFoundException{
		return sqlSession.insert(NAMESPACE+"setWrite", dto);
	}
	
	public List<ReplyDTO> getList(ReplyDTO dto) throws SQLException, ClassNotFoundException{
		return sqlSession.selectList(NAMESPACE, dto);
	}
	
}
