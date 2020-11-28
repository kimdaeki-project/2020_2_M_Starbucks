package com.starbucks.sw4.my;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.starbucks.sw4.member.MemberDTO;
import com.starbucks.sw4.order.OrderDTO;
import com.starbucks.sw4.order.pay.PayDTO;

@Service
public class MyService {
	@Autowired
	private MyDAO myDAO;
	
	//myIndex 페이지 db 출력
	public MyDTO getMyIndex(MemberDTO memberDTO) throws Exception{
		//System.out.println(myDTO.getGrade());
		return myDAO.getMyIndex(memberDTO);
	}
	
	//개인정보수정 전 db
	public MyDTO getOne(MemberDTO memberDTO) throws Exception {
		
		return myDAO.getOne(memberDTO);
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
	public MyDTO getMyStar(MyDTO myDTO) throws Exception {
		return myDAO.getMyStar(myDTO);
	}
	
	//나만의 매장
	public List<MyDTO> getMyStore(MyDTO myDTO) throws Exception {
		return myDAO.getMyStore(myDTO);
	}
	
	//회원 탈퇴
	public int setMyInfoOut(MyDTO myDTO) throws Exception{
		return myDAO.setMyInfoOut(myDTO);
	}
	
	//store
	public List<MyDTO> getStore(MyDTO myDTO) throws Exception{
		return myDAO.getStore(myDTO);
	}
	//고객의 소리
	public int setVocList(MyDTO myDTO)throws Exception{
		return myDAO.setVocList(myDTO);
	}
	
	//오더 정보 가져오기
		public OrderDTO getOrder(PayDTO payDTO) throws Exception{
			return myDAO.getOrder(payDTO);
		}
	//membercard에 update하기
		
}
