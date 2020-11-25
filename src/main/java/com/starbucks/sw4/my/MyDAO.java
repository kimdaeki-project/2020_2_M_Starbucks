package com.starbucks.sw4.my;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.my.MyDAO.";
	
	//my페이지 index
	public MyDTO getMyIndex(MyDTO myDTO) throws Exception{
		System.out.println(myDTO.getId());
		return sqlSession.selectOne(NAMESPACE+"getMyIndex", myDTO);
	}
	//로그인한 유저 정보가져오기
	public MyDTO getOne(MyDTO myDTO) throws Exception {
		System.out.println(myDTO.getEmail());
		return sqlSession.selectOne(NAMESPACE+"getOne", myDTO);
	}
	//개인 정보 수정
	public int setUpdate(MyDTO myDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", myDTO);
	}
	//비밀 번호 변경
	public int setNewPw(MyDTO myDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setNewPw", myDTO);
	}
	//별 히스토리
	public MyDTO getMyStar() throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getMyStar");				
	}
	
	//나만의 매장
	public List<MyDTO> getMyStore() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getMyStore");
	}
	//회원 탈퇴
	public int setMyInfoOut(MyDTO myDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setMyInfoOut", myDTO);
	}
	
	//매장찾기
	public List<MyDTO> getStore(MyDTO myDTO) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+"getStore", myDTO);
	}
}
