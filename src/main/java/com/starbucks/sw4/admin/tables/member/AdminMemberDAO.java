package com.starbucks.sw4.admin.tables.member;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.starbucks.sw4.admin.util.Pager;

@Component
public class AdminMemberDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.admin.tables.member.AdminMemberDAO.";
	
	public long getCount(Pager pager) throws SQLException, ClassNotFoundException{
		return sqlSession.selectOne(NAMESPACE+"getCount", pager);
	}
	
	public List<AdminMemberDTO> getList(Pager pager) throws SQLException,ClassNotFoundException{
		return sqlSession.selectList(NAMESPACE+"getList", pager);
	}
	
}
