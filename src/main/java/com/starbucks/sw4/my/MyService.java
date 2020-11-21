package com.starbucks.sw4.my;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyService {
	@Autowired
	private MyDAO myDAO;
	
	//myIndex 페이지 db 출력
	public MyDTO getMyIndex() throws Exception{
		return myDAO.getMyIndex();
	}
	
	//개인정보수정 전 db
	public MyDTO getOne() throws Exception {
		return myDAO.getOne();
	}
	
	//개인정보 수정 후 update
	public int setUpdate(MyDTO myDTO) throws Exception {
		return myDAO.setUpdate(myDTO);
	}
	
	//비밀번호 수정
	public int setNewPw(MyDTO myDTO) throws Exception {
		return myDAO.setNewPw(myDTO);
	}
	
	//별 히스토리
	public MyDTO getMyStar() throws Exception {
		return myDAO.getMyStar();
	}
	
}
