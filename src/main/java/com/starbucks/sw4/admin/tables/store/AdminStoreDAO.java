package com.starbucks.sw4.admin.tables.store;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.starbucks.sw4.admin.tables.member.AdminMemberDTO;
import com.starbucks.sw4.store.StoreDTO;

@Component
public class AdminStoreDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.admin.tables.store.AdminStoreDAO.";
	
	public List<StoreDTO> getList(AdminStoreDTO dto) throws SQLException, ClassNotFoundException{
		System.out.println("admin store service access");
		return sqlSession.selectList(NAMESPACE+"getList", dto);
	}
	
	public List<AdminMemberDTO> getAdminStoreEachCount() throws SQLException, ClassNotFoundException{
		return sqlSession.selectList(NAMESPACE+"getAdminStoreEachCount");
	}
	
	public long getAdminStoreMemberCount(HashMap<String, Object> map) throws SQLException, ClassNotFoundException{
		return sqlSession.selectOne(NAMESPACE+"getAdminStoreMemberCount",map);
	}	
	
	public StoreDTO getAdminStore(HashMap<String, Object> map) throws SQLException, ClassNotFoundException{
		return sqlSession.selectOne(NAMESPACE+"getAdminStore", map);
	}
	
}
