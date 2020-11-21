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
	
	public MyDTO getMyIndex() throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getMyIndex");
	}
	
	public MyDTO getOne() throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getOne");
	}
	
	public int setUpdate(MyDTO myDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", myDTO);
	}
	
	public int setNewPw(MyDTO myDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setNewPw", myDTO);
	}
	
}
