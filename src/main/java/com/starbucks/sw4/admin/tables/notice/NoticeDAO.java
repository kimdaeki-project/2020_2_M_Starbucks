package com.starbucks.sw4.admin.tables.notice;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.starbucks.sw4.admin.util.Pager;

@Component
public class NoticeDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.admin.tables.notice.NoticeDAO.";
	
	public NoticeDTO getOne(NoticeDTO dto) throws ClassNotFoundException, SQLException{
		return sqlSession.selectOne(NAMESPACE+"getOne", dto);
	}
	
	public List<NoticeDTO> getList(Pager pager) throws ClassNotFoundException, SQLException{
		System.out.println("dao access");
		return sqlSession.selectList(NAMESPACE+"getList", pager);
	}
	
	public long getCount() throws ClassNotFoundException, SQLException{
		return sqlSession.selectOne(NAMESPACE+"getCount");
	}
	
	public int setHitUpdate(NoticeDTO dto) throws ClassNotFoundException, SQLException{
		return sqlSession.update(NAMESPACE + "setHitUpdate", dto);
	}
	
	public int setInsert(NoticeDTO dto) throws ClassNotFoundException, SQLException {
		return sqlSession.insert(NAMESPACE+"setInsert", dto);
	}

	public int setUpdate() throws ClassNotFoundException, SQLException {
		return 0;
	}

	public int setDelete(NoticeDTO dto) throws ClassNotFoundException, SQLException {
		return sqlSession.delete(NAMESPACE+"setDelete", dto);
	}

}
