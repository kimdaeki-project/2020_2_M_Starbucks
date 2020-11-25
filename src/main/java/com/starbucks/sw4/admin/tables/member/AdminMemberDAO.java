package com.starbucks.sw4.admin.tables.member;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.starbucks.sw4.admin.tables.work.WorkTimeTableDTO;
import com.starbucks.sw4.admin.util.Pager;
import com.starbucks.sw4.store.StoreDTO;

@Component
public class AdminMemberDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.admin.tables.member.AdminMemberDAO.";
	private final String WORK_NAMESPACE = "com.starbucks.sw4.admin.tables.work.WorkTimeTableDAO.";
	
	public WorkTimeTableDTO getTimeTableOne(AdminMemberDTO dto) throws SQLException, ClassNotFoundException{
		return sqlSession.selectOne(WORK_NAMESPACE+"getTimeTableOne", dto);
	}
	
	public AdminMemberDTO getOne(AdminMemberDTO dto) throws SQLException, ClassNotFoundException{
		return sqlSession.selectOne(NAMESPACE+"getOne", dto);
	}
	
	public long getCount(Pager pager) throws SQLException, ClassNotFoundException{
		return sqlSession.selectOne(NAMESPACE+"getCount", pager);
	}
	
	public List<AdminMemberDTO> getList(Pager pager) throws SQLException,ClassNotFoundException{
		System.out.println("DAO: " + pager.getStartRow() + " ~  " + pager.getLastRow());
		return sqlSession.selectList(NAMESPACE+"getList", pager);
	}

}
