package com.starbucks.sw4.myPage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FaqDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.myPage.FaqDAO.";
	
	public List<FaqDTO> getList() {
		return sqlSession.selectList(NAMESPACE+"getList");
	}
}
