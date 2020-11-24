package com.starbucks.sw4.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StoreDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.store.StoreDAO.";
	
	public List<StoreDTO> getStoreList() throws Exception {
		return sqlSession.selectList(NAMESPACE+"getStoreList");
	}
	
}
