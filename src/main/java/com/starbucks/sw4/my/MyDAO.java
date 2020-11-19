package com.starbucks.sw4.my;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.my.MyDAO.";
	
	public MyDTO getStarCount() throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getStarCount");
	}
}
