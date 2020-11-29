package com.starbucks.sw4.store;

import java.sql.SQLException;
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
	
	// 성민님께 전달드리기
	public StoreDTO getStoreOne(StoreDTO storeDTO) throws ClassNotFoundException, SQLException{
		return sqlSession.selectOne(NAMESPACE+"getStoreOne", storeDTO);
	}
}
