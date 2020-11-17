package com.starbucks.sw4.admin.admin;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.starbucks.sw4.admin.tables.member.AdminMemberDTO;

@Component
public class AdminDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.admin.admin.AdminDAO.";
	
	public AdminMemberDTO getAdminLogin(AdminMemberDTO dto) throws SQLException, ClassNotFoundException{
		return sqlSession.selectOne(NAMESPACE+"getAdminLogin", dto);
	}

}
