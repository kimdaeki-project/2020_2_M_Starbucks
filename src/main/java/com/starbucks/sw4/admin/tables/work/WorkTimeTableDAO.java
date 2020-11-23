package com.starbucks.sw4.admin.tables.work;

import java.sql.SQLException;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WorkTimeTableDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.admin.tables.work.WorkTimeTableDAO.";
	
	public int setInsert(HashMap<String, Object> dto) throws SQLException,ClassNotFoundException{
		return sqlSession.insert(NAMESPACE+"setInsert", dto);
	}

}
