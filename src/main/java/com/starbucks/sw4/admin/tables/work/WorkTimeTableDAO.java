package com.starbucks.sw4.admin.tables.work;

import java.sql.SQLException;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.starbucks.sw4.admin.tables.member.AdminMemberDTO;

@Repository
public class WorkTimeTableDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.admin.tables.work.WorkTimeTableDAO.";
	
	// admin member work store update
	public int setAdimStoreUpdate(HashMap<String, Object> map) throws SQLException, ClassNotFoundException{
		System.out.println("admin store update (work time table dao)");
		return sqlSession.update(NAMESPACE+"setAdimStoreUpdate", map);
	}
	
	// workTimeTable update
	public int setWorkTimeTableUpdate(WorkTimeTableDTO dto) throws SQLException, ClassNotFoundException{
		System.out.println("work time table update (work time table dao)");
		return sqlSession.update(NAMESPACE+"setWorkTimeTableUpdate", dto);
	}
	
	public int setInsert(HashMap<String, Object> map) throws SQLException,ClassNotFoundException{
		System.out.println(map);
		return sqlSession.insert(NAMESPACE+"setInsert", map);
	}

	// adminMember timeTable column update
	public int setTimeTableUpdate(AdminMemberDTO dto) throws SQLException, ClassNotFoundException{
		return sqlSession.update(NAMESPACE+"setTimeTableUpdate", dto);
	}
	
}
